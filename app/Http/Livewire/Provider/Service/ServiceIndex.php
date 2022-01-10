<?php

namespace App\Http\Livewire\Provider\Service;

use App\Models\Business;
use App\Models\Service;
use Livewire\Component;

class ServiceIndex extends Component
{
    public Business $business;

    protected $listeners = [
        'servicesUpdate' => 'render'
    ];

    public function mount(){
        $this->business = auth()->user()->business;
    }

    public function render()
    {
        $services = $this->business->services()->get();
        return view('livewire.provider.service.service-index',compact('services'));
    }

    public function verify(){
        $this->business->setStatus('active');
    }

    public function activate(){
        $this->business->setStatus('active');
    }

    public function deactivate(){
        $this->business->setStatus('inactive');
    }
}
