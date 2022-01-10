<?php

namespace App\Http\Livewire\Business;

use Livewire\Component;

class BusinessJoinForm extends Component
{
    public function render()
    {
        return view('livewire.business.business-join-form')->layout('layouts.fullpage');;
    }
}
