<?php

namespace App\Http\Livewire\Front;

use App\Models\Category;
use App\Models\Service;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        $services = Service::all();
        $categories = Category::all();
        return view('livewire.front.home',compact('services','categories'))
            ->layout('layouts.front');
        ;
    }
}
