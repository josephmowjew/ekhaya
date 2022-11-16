<?php

namespace App\Http\Livewire\RanchManager\Cows\Purchase\Cows;

use App\Models\Breed;
use App\Models\Cow;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class EditCowForm extends Component
{
    public $state = [];
    public $cow;

    public function mount(Cow $cow)
    {
        $this->cow = $cow;

        $this->state = $this->cow->toArray();
    }

    public function updateCow()
    {

        $validationData = Validator::make($this->state, [
            'tag' => "required|unique:cows,tag," . $this->cow->id,
            'age' => "required|numeric",
            'color' => "required",
            'gender' => "required",
            "weight" => "required|numeric",
            "breed_id" => "required",
        ])->validate();


        $this->cow->update($validationData);

        $this->dispatchBrowserEvent("hide-form", ["message" => "Cow record updated successfully"]);

        return redirect()->to("ranch-manager/purchases/" . $this->cow->cattle_purchase_id . "/cows");
    }
    public function render()
    {
        $breeds = Breed::all();

        return view('livewire.ranch-manager.cows.purchase.cows.edit-cow-form', ['breeds' => $breeds]);
    }
}
