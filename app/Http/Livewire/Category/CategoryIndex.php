<?php

namespace App\Http\Livewire\Category;

use App\Models\Category;
use Livewire\Component;
use Livewire\WithPagination;

class CategoryIndex extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';


    public function render()
    {
        $categories = Category::withTrashed()->paginate(10);
//        dd($categories);
        return view('livewire.category.category-index',compact('categories'));
    }
}
