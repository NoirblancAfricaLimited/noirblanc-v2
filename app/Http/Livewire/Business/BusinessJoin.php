<?php

namespace App\Http\Livewire\Business;

use App\Models\Business;
use App\Models\Category;
use App\Models\City;
use App\Models\Provider;
use Illuminate\Support\Facades\Hash;
use Livewire\Component;

class BusinessJoin extends Component
{

    public Business $business;

    public Provider $provider;

    protected $rules = [
        'business.name' => 'required|string',
        'business.address' => 'required|string',
        'business.city_id' => 'required|string',
        'business.category_id' => 'required',
        'business.email' => 'required|email|unique:businesses,email',
        'business.phone' => 'required|phone:ZM|unique:businesses,phone',

        //Admin information
        'provider.firstname' => 'required|string',
        'provider.lastname' => 'required|string',
        'provider.email' => 'required|email|unique:providers,email',
        'provider.mobile' => 'required|phone:ZM|unique:providers,mobile',
//        'provider.password' => 'required|confirmed',
    ];

    public function mount()
    {
        $this->business = new Business();
        $this->provider = new Provider();

    }

    public function render()
    {
        $categories = Category::all();
        $cities = City::all();
        return view('livewire.business.business-join', compact('categories', 'cities'))->layout('layouts.fullpage');;;
    }

    public function save()
    {
        $this->validate();
        $this->provider->password = Hash::make('Welcome1');

        $this->business->save();
        $this->business->addMediaFromUrl(asset('media/users/blank.png'))->toMediaCollection('avatar');
        $this->business->setStatus('pending');
        $this->business->provider()->save($this->provider);
        $this->redirect(route('business.join'));
    }
}
