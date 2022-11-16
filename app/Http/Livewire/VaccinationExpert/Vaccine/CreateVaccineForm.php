<?php

namespace App\Http\Livewire\VaccinationExpert\Vaccine;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Vaccine;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateVaccineForm extends AdminComponent
{
    public $state = [];
    public function createVaccine()
    {
        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'name' => "required|unique:vaccines"
        ])->validate();

        Vaccine::create($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Vaccine created successfully"]);

        return redirect()->to('/vaccination-expert/vaccines');
    }

    public function render()
    {
        return view('livewire.vaccination-expert.vaccine.create-vaccine-form');
    }
}
