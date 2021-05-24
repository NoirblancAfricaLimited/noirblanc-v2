<?php

namespace App\Http\Livewire\PromoCode;

use Livewire\Component;

class PromoCodeIndex extends Component
{
    public $service;
    public function render()
    {
        $vouchers = $this->service->vouchers()->get();
//        dd($vouchers);
        return view('livewire.promo-code.promo-code-index',compact('vouchers'));
    }
}
