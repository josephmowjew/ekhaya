<?php

namespace App\Http\Livewire\RanchManager\Cows;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Herd;
use Livewire\Component;

class HerdList extends AdminComponent
{
    public $herdToBeDeletedId;
    public $searchTerm = null;


    public function confirmHerdRemoval($herdId)
    {
        $this->herdToBeDeletedId = $herdId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }

    public function deteleHerd()
    {
        //fetch role by id

        $herd = Herd::findOrFail($this->herdToBeDeletedId);

        $herd->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "Herd removed successfully"]);
    }

    public function render()
    {
        $herds = Herd::query()
            ->where('name', 'like', '%' . $this->searchTerm . '%')
            ->paginate(10);

        return view('livewire.ranch-manager.cows.herd-list', ['herds' => $herds]);
    }
}
