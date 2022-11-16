<?php

namespace App\Http\Livewire\RanchManager\Cows\Breed;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Breed;
use Livewire\Component;

class ListBreeds extends AdminComponent
{
    public $breedToBeDeletedId;
    public $searchTerm = null;

    public function confirmBreedRemoval($breedId)
    {
        $this->breedToBeDeletedId = $breedId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }
    public function deleteBreed()
    {
        //fetch role by id

        $breed = Breed::findOrFail($this->breedToBeDeletedId);

        $breed->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "Breed removed successfully"]);
    }

    public function render()
    {
        $breeds = Breed::query()
            ->where('name', 'like', '%' . $this->searchTerm . '%')
            ->paginate(10);

        return view('livewire.ranch-manager.cows.breed.list-breeds', ['breeds' => $breeds]);
    }
}
