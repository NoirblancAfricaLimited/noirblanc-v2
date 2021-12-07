<?php

namespace App\Http\Livewire\Front;

use App\Models\Category;
use App\Models\Service;
use Livewire\Component;

class ServiceBrowse extends Component
{
    public function render()
    {
        $services = Service::all();
        $categories = Category::all();
        return view('livewire.front.service-browse',compact('services','categories'))
            ->layout('layouts.front.main');
    }
}
