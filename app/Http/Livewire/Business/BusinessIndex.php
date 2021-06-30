<?php

namespace App\Http\Livewire\Business;

use App\Models\Business;
use Livewire\Component;
use Livewire\WithPagination;

class BusinessIndex extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = [
        'updateBusiness' => 'render'
    ];

    public function render()
    {
        $businesses = Business::withCount('services')->latest()->get();
        return view('livewire.business.business-index',compact('businesses'));
    }
}
