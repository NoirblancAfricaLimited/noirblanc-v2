<?php

namespace App\Http\Livewire\Business;

use App\Models\Business;
use App\Models\Category;
use App\Models\City;
use App\Models\Provider;
use Illuminate\Support\Facades\Hash;
use Livewire\Component;
use Livewire\WithFileUploads;

class BusinessJoin extends Component
{
    use WithFileUploads;

    public Business $business;

    public Provider $provider;

    public $avatar,$nrc,$certificates;


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
        'avatar' => 'required|image',
        'nrc' => 'required|image',
        'certificates' => 'sometimes|image',
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
        $provider = $this->business->provider()->save($this->provider);
        $provider->addMediaFromUrl($this->avatar->temporaryUrl())->toMediaCollection('avatar');
        $provider->addMediaFromUrl($this->nrc->temporaryUrl())->toMediaCollection('nrc');
        $provider->addMediaFromUrl($this->certificates->temporaryUrl())->toMediaCollection('certificates');
        $this->redirect(route('business.join'));
    }
}
