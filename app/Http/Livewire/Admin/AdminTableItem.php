<?php

namespace App\Http\Livewire\Admin;

use App\Models\Admin;
use Livewire\Component;

class AdminTableItem extends Component
{
    public Admin $admin;
    public function render()
    {
        return view('livewire.admin.admin-table-item');
    }

    public function delete(){
        $this->admin->delete();
    }

    public function activate(){
        $this->admin->restore();
    }

    public function deactivate(){
        $this->admin->delete();
    }
}
