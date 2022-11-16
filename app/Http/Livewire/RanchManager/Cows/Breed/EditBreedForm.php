<?php

namespace App\Http\Livewire\RanchManager\Cows\Breed;

use App\Models\Breed;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class EditBreedForm extends Component
{
    public $breed;
    public $state = [];

    public function mount(Breed $breed)
    {
        $this->breed = $breed;

        $this->state = $this->breed->toArray();
    }

    public function updateBreed()
    {
        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'name' => "required|unique:breeds,name," . $this->feed->id
        ])->validate();

        $this->breed->update($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Breed updated successfully"]);

        return redirect()->to('/ranch-manager/cows/breeds');
    }
    public function render()
    {
        return view('livewire.ranch-manager.cows.breed.edit-breed-form');
    }
}
