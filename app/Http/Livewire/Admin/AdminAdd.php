<?php

namespace App\Http\Livewire\Admin;

use App\Models\Admin;
use Illuminate\Support\Facades\Hash;
use Livewire\Component;

class AdminAdd extends Component
{
    public Admin $admin;

    protected $rules = [
        'admin.firstname' => 'required|string',
        'admin.lastname' => 'required|string',
        'admin.email' => 'required|string|unique:admins,email',
        'admin.mobile' => 'required|string|unique:admins,mobile',
        'admin.password' => 'required|string',
    ];

    public function mount(){
        $this->admin = new Admin();
    }
    public function render()
    {
        return view('livewire.admin.admin-add');
    }

    public function save()
    {
        $this->validate();
        $this->admin->password = Hash::make($this->admin->password);
        $this->admin->save();
        $this->admin = new Admin();
        $this->emit('message', 'success', "admin added successfully");
    }
}
