<?php

namespace App\Http\Livewire\Booking;

use App\Http\Resources\BookingResource;
use App\Models\Booking;
use App\Models\Service;
use Livewire\Component;

class BookingIndex extends Component
{

    public Service $service;
    public $events;
    protected $listeners = [
        'bookingLoaded' => 'bookingsLoaded'
    ];


    public function render()
    {
        $bookings = $this->service->bookings()->with(['customer', 'service.sub_category'])->get();
//        dd($bookings);
        $this->events = $bookings->map(function ($booking) {
            return [
                'id' => $booking->id,
                'title' => $booking->customer->fullname,
                'description' => $booking->service->sub_category->name,
                'date' => $booking->start_at->toDateTimeString(),
            ];
        });
        return view('livewire.booking.booking-index');
    }

}
