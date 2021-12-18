<?php

namespace App\Http\Livewire\Booking;

use App\Models\Booking;
use Livewire\Component;

class BookingIndexItem extends Component
{
    public Booking $booking;

    public function render()
    {
        return view('livewire.booking.booking-index-item');
    }

    public function confirm()
    {
        $this->booking->setStatus('confirmed');
        $this->emit('update');
        $this->emit('message','Booking confirmed successfully');
    }
}
