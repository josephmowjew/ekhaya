<?php

namespace App\Http\Livewire\Admin\Users;

use App\Models\Role;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class EditUserForm extends Component
{
    public $state = [];
    public $user;

    public function mount(User $user)
    {
        $this->user = $user;

        $this->state = $this->user->toArray();
    }

    public function updateUser()
    {


        $validationData = Validator::make($this->state, [
            'firstName' => "required",
            'surname' => "required",
            'gender' => "required",
            'email' => "required|email|unique:users,email," . $this->user->id,
            "phoneNumber" => "required",
            "address" => "required",
            "role_id" => "required",
            "password" => "sometimes|confirmed"

        ])->validate();

        if (!empty($validationData['password'])) {

            $validationData['password'] = bcrypt($validationData['password']);
        }
        $this->user->update($validationData);

        $this->dispatchBrowserEvent("hide-form", ["message" => "User updated successfully"]);

        return redirect()->to('/admin/users');
    }

    public function render()
    {
        $roles = Role::all();

        return view('livewire.admin.users.edit-user-form', ['roles' => $roles]);
    }
}
