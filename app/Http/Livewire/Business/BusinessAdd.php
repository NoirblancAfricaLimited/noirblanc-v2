<?php

namespace App\Http\Livewire\Business;

use App\Models\Business;
use App\Models\Category;
use App\Models\City;
use App\Models\Provider;
use Illuminate\Support\Facades\Hash;
use Livewire\Component;

class BusinessAdd extends Component
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

    public function mount(){
        $this->business = new Business();
        $this->provider = new Provider();

    }

    public function render()
    {
        $categories = Category::all();
        $cities = City::all();
        return view('livewire.business.business-add',compact('categories','cities'));
    }

    public function save(){
        $this->validate();
        $user = $this->provider;
        $business = $this->business;
        $this->provider->password = Hash::make('Welcome1');

        $this->business->save();
        $this->business->setStatus('active');
        $this->business->provider()->save($this->provider);
        $this->redirect(route('business.index'));
    }
}
