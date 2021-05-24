<?php

namespace App\Http\Livewire\Providers;

use App\Models\Provider;
use Livewire\Component;

class ProviderIndex extends Component
{
    public function render()
    {
        $providers = Provider::all();
        return view('livewire.providers.provider-index',compact('providers'));
    }
}
