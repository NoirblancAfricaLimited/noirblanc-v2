<?php

namespace App\Http\Livewire\Service;

use App\Models\Service;
use Livewire\Component;

class ServiceShow extends Component
{
    public Service $service;

    public function mount(Service $service){
        $this->service = $service;
//        $service->load('business');
    }


    public function render()
    {
        return view('livewire.service.service-show');
    }
}
