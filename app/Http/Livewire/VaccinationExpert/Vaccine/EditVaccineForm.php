<?php

namespace App\Http\Livewire\VaccinationExpert\Vaccine;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Vaccine;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class EditVaccineForm extends AdminComponent
{
    public $vaccine;
    public $state = [];

    public function mount(Vaccine $vaccine)
    {
        $this->vaccine = $vaccine;

        $this->state = $this->vaccine->toArray();
    }

    public function updateVaccine()
    {


        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'name' => "required|unique:vaccines"
        ])->validate();

        $this->vaccine->update($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Vaccine updated successfully"]);

        return redirect()->to('/vaccination-expert/vaccines');
    }
    public function render()
    {
        return view('livewire.vaccination-expert.vaccine.edit-vaccine-form');
    }
}
