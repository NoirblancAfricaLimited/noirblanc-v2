<?php

namespace App\Http\Livewire\Admin;

use App\Models\Admin;
use Livewire\Component;

class AdminIndex extends Component
{
    public function render()
    {
        $admins = Admin::withTrashed()->get();

        return view('livewire.admin.admin-index',compact('admins'));
    }
}
