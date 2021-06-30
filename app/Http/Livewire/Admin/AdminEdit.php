<?php

namespace App\Http\Livewire\Admin;

use App\Models\Admin;
use Illuminate\Validation\Rule;
use Livewire\Component;

class AdminEdit extends Component
{
    public Admin $admin;

    protected function rules()
    {
        return [
            'admin.firstname' => 'required|string',
            'admin.lastname' => 'required|string',
            'admin.email' => ['required','string',Rule::unique('admins','email')->ignore($this->admin->id)],
            'admin.mobile' => ['required','string','phone:ZM',Rule::unique('admins','mobile')->ignore($this->admin->id)],
        ];
    }

    public function mount(Admin $admin)
    {
        $this->admin = $admin;
    }

    public function render()
    {
        return view('livewire.admin.admin-edit');
    }

    public function save()
    {
        $this->validate();
        $this->admin->save();
        $this->emit('message', 'success', "admin added successfully");
    }
}
