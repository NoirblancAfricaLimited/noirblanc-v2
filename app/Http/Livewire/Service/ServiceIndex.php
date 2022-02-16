<?php

namespace App\Http\Livewire\Service;

use App\Models\Business;
use App\Models\Service;
use Livewire\Component;

class ServiceIndex extends Component
{
    public Business $business;

    protected $listeners = [
        'servicesUpdate' => 'render'
    ];

    public function mount(Business $business){
        $this->business = $business;
    }

    public function render()
    {
        $services = $this->business->services()
            ->withSum('wallet','balance')
            ->withCount(['bookings','reviews'])
            ->get();

        $total_sales = $services->sum('wallet_sum_balance');
        $total_bookings = $services->sum('bookings_count');
        return view('livewire.service.service-index',
            compact('services','total_bookings','total_sales'));
    }

    public function verify(){
        $this->business->setStatus('active');
    }

    public function activate(){
        $this->business->setStatus('active');
    }

    public function deactivate(){
        $this->business->setStatus('inactive');
    }
}
