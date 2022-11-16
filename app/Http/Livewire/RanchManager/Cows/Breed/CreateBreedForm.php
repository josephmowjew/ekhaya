<?php

namespace App\Http\Livewire\RanchManager\Cows\Breed;

use App\Models\Breed;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateBreedForm extends Component
{
    public $state = [];

    public function createBreed()
    {
        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'name' => "required|unique:breeds"
        ])->validate();

        Breed::create($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Breed added successfully"]);

        return redirect()->to('/ranch-manager/cows/breeds');
    }
    public function render()
    {
        return view('livewire.ranch-manager.cows.breed.create-breed-form');
    }
}
