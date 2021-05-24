<?php

namespace App\Http\Livewire\Review;

use Livewire\Component;
use Livewire\WithPagination;

class ReviewIndex extends Component
{

    public $service;
    public function render()
    {
        $reviews = $this->service->reviews;
//        dd($reviews);
        return view('livewire.review.review-index',compact('reviews'));
    }
}
