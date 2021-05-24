<?php

namespace App\Http\Livewire\Booking;

use App\Models\Booking;
use App\Models\Service;
use Livewire\Component;

class BookingIndex extends Component
{

    public Service $service;

    protected $listeners = [
        'bookingLoaded' => 'bookingsLoaded'
    ];

    public function mount(Service $service)
    {
        $this->service = $service;
    }

    public function render()
    {
        return view('livewire.booking.booking-index');
    }

    public function bookingsLoaded()
    {
        $bookings = $this->service->bookings;
        $this->emit('bookingLoaded', compact('bookings'));
    }
}
