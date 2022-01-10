<?php

namespace App\Http\Livewire\Provider\Service;

use Livewire\Component;

class ServiceIndexTableItem extends Component
{
    public $service;
    public function render()
    {
        return view('livewire.provider.service.service-index-table-item');
    }

    public function remove(){
        $this->service->delete();
        $this->emit('message', 'success', "Service deleted successfully");
        $this->emit('servicesUpdate');

    }
}
