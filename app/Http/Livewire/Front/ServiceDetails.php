<?php

namespace App\Http\Livewire\Front;

use App\Models\Service;
use Livewire\Component;

class ServiceDetails extends Component
{
    public Service $service;

    public function mount(Service $service)
    {
        $this->service = $service;
    }

    public function render()
    {
        return view('livewire.front.service-details')
            ->layout('layouts.front.main');

    }
}
