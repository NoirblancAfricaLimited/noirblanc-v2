<?php

namespace App\Http\Livewire\Service;

use App\Models\Business;
use App\Models\Category;
use App\Models\Service;
use Livewire\Component;

class ServiceAdd extends Component
{
    public Service $service;
    public Business $business;

    protected $rules = [
        'service.description' => 'required|string',
        'service.sub_category_id' => 'required',
        'service.price' => 'required|numeric',
//        'service.open_at' => 'required',
//        'service.close_at' => 'required',
    ];

    public function mount()
    {
        $this->service = new Service();
    }


    public function render()
    {

        $categories = $this->business->category->sub_categories()->get();
        return view('livewire.service.service-add', compact('categories'));
    }

    public function save()
    {
        $this->validate();
        $service = $this->business->services()->save($this->service);
        $service->setStatus('active');
        $this->emit('message', 'success', "Service added successfully");
        $this->emit('servicesUpdate');
        $this->service = new Service();
    }
}
