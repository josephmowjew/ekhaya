<?php

namespace App\Http\Livewire\RanchManager\Cows;

use App\Models\Herd;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class EditHerdForm extends Component
{
    public $herd;
    public $state = [];

    public function mount(Herd $herd)
    {
        $this->herd = $herd;

        $this->state = $this->herd->toArray();
    }

    public function updateHerd()
    {


        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'name' => "required|unique:herds"
        ])->validate();

        $this->herd->update($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Herd updated successfully"]);

        return redirect()->to('/ranch-manager/herds');
    }

    public function render()
    {
        return view('livewire.ranch-manager.cows.edit-herd-form');
    }
}
