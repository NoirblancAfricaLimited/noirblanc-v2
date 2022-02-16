<?php

namespace App\Http\Livewire\Review;

use Digikraaft\ReviewRating\Models\Review;
use Livewire\Component;
use Livewire\WithPagination;

class ReviewIndex extends Component
{

    public $service;
    public function render()
    {
        $reviews = $this->service->reviews()->with(['model','author'])->latest()->get();
        return view('livewire.review.review-index',compact('reviews'));
    }
}
