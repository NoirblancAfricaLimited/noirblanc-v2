<?php

namespace App\Http\Livewire\Category;

use App\Models\Category;
use Livewire\Component;

class CategoryIndex extends Component
{
    public function render()
    {
        $categories = Category::all();
//        dd($categories);
        return view('livewire.category.category-index',compact('categories'));
    }
}
