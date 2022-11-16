<?php

namespace App\Http\Livewire\Admin\Users;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\User;
use Livewire\Component;

class UserList extends AdminComponent
{

    public $userToBeDeletedId;
    public $searchTerm = null;

    public function confirmUserRemoval($userId)
    {
        $this->userToBeDeletedId = $userId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }
    public function deleteUser()
    {
        //fetch role by id

        $user = User::findOrFail($this->userToBeDeletedId);

        $user->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "User removed successfully"]);
    }
    public function render()
    {


        $users = User::query()
            ->where('firstName', 'like', '%' . $this->searchTerm . '%')
            ->orWhere('surname', 'like', '%' . $this->searchTerm . '%')
            ->orWhere('gender', 'like', '%' . $this->searchTerm . '%')
            ->paginate(10);

        return view('livewire.admin.users.user-list', ['users' => $users]);
    }
}
