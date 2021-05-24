<?php

namespace App\Http\Livewire\Category;

use App\Models\Category;
use Livewire\Component;

class CategoryAdd extends Component
{
    public $name;
    public function render()
    {
        return view('livewire.category.category-add');
    }

    public function save(){
       $category = Category::create([
            'name' => $this->name
        ]);
        $category->setStatus('active');
        $this->redirect(route('category.index'));
    }
}
