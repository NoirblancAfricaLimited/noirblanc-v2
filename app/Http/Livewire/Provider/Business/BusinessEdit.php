<?php

namespace App\Http\Livewire\Provider\Business;

use App\Models\Business;
use App\Models\Category;
use App\Models\City;
use App\Models\Provider;
use Illuminate\Validation\Rule;
use Livewire\Component;
use Livewire\WithFileUploads;

class BusinessEdit extends Component
{
    use WithFileUploads;


    public Business $business;
    public Provider $provider;
    public $avatar;


    protected function rules()
    {
        return [
            'business.name' => 'required|string',
            'business.address' => 'required|string',
            'business.city_id' => 'required|numeric',
            'business.category_id' => 'required',
            'business.email' => ['required', 'string', Rule::unique('providers', 'email')->ignore($this->provider->id)],
            'business.phone' => ['required', 'string','phone:ZM', Rule::unique('providers', 'mobile')->ignore($this->provider->id)],
        ];
    }

    public function mount(Business $business)
    {
        $business->load('provider');
        $this->business = $business;
        $this->provider = $this->business->provider;
    }

    public function render()
    {
        $categories = Category::all();
        $cities = City::all();
        return view('livewire.provider.business.business-edit', compact('categories', 'cities'));
    }

    public function save()
    {
        $this->validate();
        $this->business->save();
        if ($this->avatar) {
            $this->business->addMediaFromUrl($this->avatar->temporaryUrl())->toMediaCollection('avatar');
        }
        $this->emit('message', 'success', "Business edited successfully");
    }
}
