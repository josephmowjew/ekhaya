<?php

namespace App\Http\Livewire\Admin\Users;

use App\Models\Role;
use App\Models\User;
use App\Notifications\AccountCreationNotification;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateUserForm extends Component
{

    public $state = [];

    public function createUser()
    {

        $validationData = Validator::make($this->state, [
            'firstName' => "required",
            'surname' => "required",
            'gender' => "required",
            'email' => "required|email|unique:users",
            "phoneNumber" => "required",
            "address" => "required",
            "role_id" => "required",
            "password" => "required|confirmed"

        ])->validate();

        $plainPassword = $validationData['password'];

        $validationData['password'] = bcrypt($validationData['password']);

        //create user account

        $user_account = User::create($validationData);

        //send email when account has been created
        Auth()->user()->notify(new AccountCreationNotification($validationData['email'], $plainPassword));

        $this->dispatchBrowserEvent("alert", ["message" => "User account created successfully"]);

        return redirect()->to('/admin/users');
    }
    public function render()
    {
        $roles = Role::all();

        return view('livewire.admin.users.create-user-form', ['roles' => $roles]);
    }
}
