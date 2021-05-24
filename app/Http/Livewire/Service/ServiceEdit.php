<?php

namespace App\Http\Livewire\Service;

use App\Models\Business;
use App\Models\Category;
use App\Models\Service;
use Livewire\Component;

class ServiceEdit extends Component
{
    public Service $service;

    protected $rules = [
        'service.description' => 'required|string',
        'service.category_id' => 'required|numeric',
        'service.price' => 'required|string',
        'service.open_at' => 'required',
        'service.close_at' => 'required',
    ];

    public function mount(Service $service)
    {
        $this->service = $service;
    }


    public function render()
    {
        $categories = Category::all();

        return view('livewire.service.service-edit', compact('categories'));
    }

    public function save()
    {
        $this->validate();
        $this->service->save();
        $this->emit('message', 'success', "Service updated successfully");
//        $this->emit('servicesUpdate');
    }
}
