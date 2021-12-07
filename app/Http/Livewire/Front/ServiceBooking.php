<?php

namespace App\Http\Livewire\Front;

use App\Models\Booking;
use App\Models\Customer;
use App\Models\Service;
use Illuminate\Validation\Rule;
use Livewire\Component;

class ServiceBooking extends Component
{
    public $type, $email;
    public Customer $customer;
    public Booking $booking;
    public Service $service;

    public function mount()
    {
        $this->customer = new Customer();
        $this->booking = new Booking();
    }

    protected function rules()
    {
        return [
            'customer.firstname' => 'required|string',
            'customer.lastname' => 'required|string',
            'customer.email' => ['required', 'string', Rule::unique('customers', 'email')->ignore($this->customer->id)],
            'customer.mobile' => ['required', 'string', 'phone:ZM,US', Rule::unique('customers', 'mobile')->ignore($this->customer->id)],
            'booking.start_at' => 'required',

        ];
    }

    public function render()
    {
        return view('livewire.front.service-booking')
            ->layout('layouts.front.main');

    }

    public function save()
    {
        $this->validate();
        $this->customer->save();
        $this->booking->customer_id = $this->customer->id;
        $this->service->bookings()->save($this->booking);
        $this->customer = new Customer();
        $this->booking = new Booking();
        $this->emit('message', 'success', "Booking scheduled successfully");

    }
}
