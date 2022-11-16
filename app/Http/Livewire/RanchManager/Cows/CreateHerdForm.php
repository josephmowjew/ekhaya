<?php

namespace App\Http\Livewire\RanchManager\Cows;

use App\Models\Herd;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateHerdForm extends Component
{

    public $state = [];
    public function createHerd()
    {
        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'name' => "required|unique:herds"
        ])->validate();

        Herd::create($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Herd created successfully"]);

        return redirect()->to('/ranch-manager/herds');
    }

    public function render()
    {
        return view('livewire.ranch-manager.cows.create-herd-form');
    }
}
