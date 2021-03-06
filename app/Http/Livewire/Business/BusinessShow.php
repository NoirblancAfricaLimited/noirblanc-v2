<?php

namespace App\Http\Livewire\Business;

use App\Models\Business;
use Livewire\Component;

class BusinessShow extends Component
{
    public $business;

    public function mount(Business $business){
        $this->business = $business;
    }

    public function render()
    {
        return view('livewire.business.business-show');
    }

    public function verify(){
        $this->business->setStatus('active');
    }

    public function activate(){
        $this->business->setStatus('active');
    }

    public function deactivate(){
        $this->business->setStatus('active');
    }
}
