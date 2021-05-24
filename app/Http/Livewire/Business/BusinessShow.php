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
}
