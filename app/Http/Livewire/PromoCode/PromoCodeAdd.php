<?php

namespace App\Http\Livewire\PromoCode;

use App\Models\Service;
use Livewire\Component;

class PromoCodeAdd extends Component
{
    public $amount, $days;
    public Service $service;
    protected $rules = [
        'days' => 'required|numeric|min:1',
        'amount' => 'required|numeric|min:1',
    ];

    public function render()
    {
        return view('livewire.promo-code.promo-code-add');
    }

    public function save()
    {
        $this->validate();
        $this->service->createVouchers(1, [
            'discount'=> $this->amount
        ], today()->addDays($this->days));
    }
}
