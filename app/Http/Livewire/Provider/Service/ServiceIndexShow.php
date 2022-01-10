<?php

namespace App\Http\Livewire\Provider\Service;

use App\Models\Service;
use Livewire\Component;

class ServiceIndexShow extends Component
{
    public Service $service;

    public function mount(Service $service){
        $this->service = $service;
//        $service->load('business');
    }


    public function render()
    {
        return view('livewire.provider.service.service-index-show');
    }
}
