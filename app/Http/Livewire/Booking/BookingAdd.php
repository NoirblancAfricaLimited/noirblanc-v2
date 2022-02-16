<?php

namespace App\Http\Livewire\Booking;

use App\Models\Booking;
use App\Models\Customer;
use App\Models\Service;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use Livewire\Component;

class BookingAdd extends Component
{
    public $type, $mobile;
    public Customer $customer;
    public Booking $booking;
    public Service $service;

    protected function rules()
    {
        return [
            'customer.firstname' => 'required|string',
            'customer.lastname' => 'required|string',
            'customer.email' => ['nullable', 'string', Rule::unique('customers', 'email')->ignore($this->customer->id)],
            'customer.mobile' => ['required', 'string', 'phone:ZM,US', Rule::unique('customers', 'mobile')->ignore($this->customer->id)],
            'booking.start_at' => 'required',

        ];
    }

    public function mount()
    {
        $this->type = 1;
        $this->customer = new Customer();
        $this->booking = new Booking();
    }

    public function render()
    {
        return view('livewire.booking.booking-add');
    }

    public function search()
    {
        $this->customer = new Customer();
        Validator::make(
            ['mobile' => $this->mobile],
            ['mobile' => 'required|exists:customers'],
            ['required' => 'Please enter Mobile', 'exists' => 'There is no customer with that Mobile'],
        )->validate();

        $this->customer = Customer::where('mobile', $this->mobile)->first();
    }

    public function save()
    {
        $this->validate();
        if ($this->type == 1) {
            $this->customer->save();
        }
        $this->booking->customer_id = $this->customer->id;
        $booking = $this->service->bookings()->save($this->booking);
        $booking->setStatus('pending');

        $this->customer = new Customer();
        $this->booking = new Booking();
        $this->emit('message', 'success', "Booking scheduled successfully");

    }

}
