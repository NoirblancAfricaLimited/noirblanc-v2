<?php

namespace App\Http\Livewire\Booking;

use App\Http\Resources\BookingResource;
use App\Models\Booking;
use App\Models\Service;
use Livewire\Component;

class BookingIndexOld extends Component
{

    public Service $service;
    public $events;
    protected $listeners = [
        'bookingLoaded' => 'bookingsLoaded'
    ];


    public function render()
    {
        $bookings = $this->service->bookings()->with(['customer', 'service.sub_category'])->get();
//        dd($this->events);
        return view('livewire.booking.booking-index-old',compact('bookings'));
    }

}
