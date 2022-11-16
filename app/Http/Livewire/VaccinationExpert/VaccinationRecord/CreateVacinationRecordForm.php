<?php

namespace App\Http\Livewire\VaccinationExpert\VaccinationRecord;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Herd;
use App\Models\VaccinationRecord;
use App\Models\Vaccine;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateVacinationRecordForm extends AdminComponent
{
    public $state = [];

    public function createVaccinationRecord()
    {
        $yesterdaysDate = date('Y-m-d', strtotime("-1 day")); //yesterday

        $validationData = Validator::make($this->state, [
            'date-administered' => "required|date|after:" . $yesterdaysDate,
            'vaccine_id' => "required",
            'herd_id' => "required",
        ])->validate();

        //check for existing record
        if ($this->RecordExists($validationData) != null) {

            //$validationData->getMessageBag()->add('herd_id', "Sorry but this herd has already been vaccinated");

            return $this->dispatchBrowserEvent("alert-error", ["message" => "Sorry but that recored already exist"]);
        }
        //create user account

        $vaccinationRecord = VaccinationRecord::create($validationData);

        $this->dispatchBrowserEvent("alert", ["message" => "Vaccination record created successfully"]);

        return redirect()->to('/vaccination-expert/vaccination-records');
    }
    public function render()
    {
        $herds = Herd::all();
        $vaccines = Vaccine::all();
        return view('livewire.vaccination-expert.vaccination-record.create-vacination-record-form', ['herds' => $herds, 'vaccines' => $vaccines]);
    }

    private function RecordExists($validationData)
    {
        return VaccinationRecord::where(['herd_id' => $validationData['herd_id'], 'date-administered' => $validationData['date-administered'], 'vaccine_id' => $validationData['vaccine_id']])->get();
    }
}
