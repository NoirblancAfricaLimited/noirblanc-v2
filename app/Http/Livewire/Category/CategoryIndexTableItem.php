<?php

namespace App\Http\Livewire\Category;

use App\Models\Category;
use Livewire\Component;

class CategoryIndexTableItem extends Component
{
    public Category $category;
    public function render()
    {
        return view('livewire.category.category-index-table-item');
    }

    public function getColorProperty()
    {
        switch ($this->category->status) {
            case 'pending':
                $color = 'warning';
                break;

            case 'approved':
                $color = 'success';
                break;

            case 'rejected':
                $color = 'danger';
                break;

            default:
                $color = 'default';
        }
        return $color;
    }

    public function remove(){
        $this->category->delete();
        $this->redirect(route('category.index'));
    }
}
