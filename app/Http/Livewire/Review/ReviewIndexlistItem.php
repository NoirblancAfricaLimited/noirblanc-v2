<?php

namespace App\Http\Livewire\Review;

use App\Models\Category;
use App\Models\Customer;
use Livewire\Component;

class ReviewIndexlistItem extends Component
{
    public $review;

    public function render()
    {
        $customer = Customer::find($this->review->author_id);
        return view('livewire.review.review-indexlist-item', compact('customer'));
    }

    public function remove()
    {
        $this->review->delete();
    }
}
