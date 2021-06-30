<?php

namespace App\Http\Livewire\Business;

use App\Models\Provider;
use Illuminate\Validation\Rule;
use Livewire\Component;

class ProviderEdit extends Component
{
    public Provider $provider;

    protected function rules()
    {
        return [
            'provider.firstname' => 'required|string',
            'provider.lastname' => 'required|string',
            'provider.email' => ['required', 'string', Rule::unique('providers', 'email')->ignore($this->provider->id)],
            'provider.mobile' => ['required', 'string', Rule::unique('providers', 'mobile')->ignore($this->provider->id)],
        ];
    }

    function render()
    {
        return view('livewire.business.provider-edit');
    }

    function save()
    {
        $this->validate();
        $this->provider->save();
        $this->emit('message', 'success', "Provider Edited successfully");

    }
}
