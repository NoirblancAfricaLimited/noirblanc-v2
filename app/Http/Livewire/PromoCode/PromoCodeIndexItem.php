<?php

namespace App\Http\Livewire\PromoCode;

use Livewire\Component;

class PromoCodeIndexItem extends Component
{
    public $voucher;
    public function render()
    {
        $customer = $this->voucher->users()->first();
        return view('livewire.promo-code.promo-code-index-item',compact('customer'));
    }
}
