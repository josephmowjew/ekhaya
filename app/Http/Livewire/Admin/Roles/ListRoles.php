<?php

namespace App\Http\Livewire\Admin\Roles;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Role;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;
use Livewire\WithPagination;

class ListRoles extends AdminComponent
{

    public $state = [];
    public $ShowEditRole = false;
    public $role;
    public $roleToBeDeletedId;

    public function displayRoleForm()
    {
        $this->state = [];
        $this->dispatchBrowserEvent("show-form");
    }

    public function createRole()
    {
        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'name' => "required|unique:roles"
        ])->validate();

        Role::create($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Role created successfully"]);
    }

    public function edit(Role $role)
    {
        $this->dispatchBrowserEvent("show-form");
        $this->role = $role;
        $this->state = $role->toArray();
        $this->ShowEditRole = true;
    }

    public function updateRole()
    {
        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'name' => "required|unique:roles,name," . $this->role->id
        ])->validate();



        $this->role->update($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Role updated successfully"]);
    }
    public function confirmRoleRemoval($roleId)
    {
        $this->roleToBeDeletedId = $roleId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }
    public function deteleRole()
    {
        //fetch role by id

        $role = Role::findOrFail($this->roleToBeDeletedId);

        $role->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "Role removed successfully"]);
    }
    public function render()
    {
        $roles = Role::latest()->paginate(10);
        return view('livewire.admin.roles.list-roles', ['roles' => $roles]);
    }
}
