<?php

namespace App\Http\Livewire\RanchManager\Farmer;

use App\Models\Farmer;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateFarmerForm extends Component
{
    public $state = [];
    public function createFarmer()
    {
        //validate input coming from the user


        $validateData =  Validator::make($this->state, [
            'firstName' => 'required|max:70',
            'surname' => 'required|max:70',
            'contact' => 'required|string|max:16|min:10',
            'locationName' => 'required|max:100',
            'gender' => "required",
            'latitude' => 'required|max:90|min:-90|numeric',
            'longitude' => 'required|max:90|min:-90|numeric',
        ])->validate();

        Farmer::create($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Farmer record created successfully"]);

        return redirect()->to('/ranch-manager/farmers');
    }
    public function render()
    {
        return view('livewire.ranch-manager.farmer.create-farmer-form');
    }
}
