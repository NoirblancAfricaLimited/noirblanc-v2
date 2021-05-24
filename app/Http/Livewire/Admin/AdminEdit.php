<?php

namespace App\Http\Livewire\Admin;

use App\Models\Admin;
use Livewire\Component;

class AdminEdit extends Component
{
    public Admin $admin;

    public function mount(Admin $admin){
        $this->admin = $admin;
    }

    public function render()
    {
        return view('livewire.admin.admin-edit');
    }
}
