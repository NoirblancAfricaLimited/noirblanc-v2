<?php

namespace App\Http\Livewire\Business;

use App\Models\Business;
use Livewire\Component;

class BusinessIndex extends Component
{
    protected $listeners = [
        'updateBusiness' => 'render'
    ];

    public function render()
    {
        $businesses = Business::all();
        return view('livewire.business.business-index',compact('businesses'));
    }
}
