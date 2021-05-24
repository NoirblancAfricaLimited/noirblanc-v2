<?php

namespace App\Http\Livewire\Business;

use App\Models\Business;
use Livewire\Component;

class BusinessIndexTableItem extends Component
{
    public Business $business;

    public function render()
    {
        return view('livewire.business.business-index-table-item');
    }

    public function remove(){
        $this->business->delete();
        $this->emitUp('updateBusiness');
    }

    public function getColorProperty()
    {
        switch ($this->business->status) {
            case 'pending':
                $color = 'warning';
                break;

            case 'approved':
                $color = 'success';
                break;

            case 'rejected':
                $color = 'danger';
                break;

            default:
                $color = 'default';
        }
        return $color;
    }
}
