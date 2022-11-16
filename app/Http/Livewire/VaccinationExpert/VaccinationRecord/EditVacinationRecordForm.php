<?php

namespace App\Http\Livewire\VaccinationExpert\VaccinationRecord;

use App\Models\Herd;
use App\Models\VaccinationRecord;
use App\Models\Vaccine;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class EditVacinationRecordForm extends Component
{
    public $state = [];
    public $vaccinationRecord;

    public function mount(VaccinationRecord $vaccinationRecord)
    {

        $this->vaccinationRecord = $vaccinationRecord;

        $this->state = $this->vaccinationRecord->toArray();
    }

    public function updateVaccinationRecord()
    {


        $yesterdaysDate = date('Y-m-d', strtotime("-1 day")); //yesterday
        $validationData = Validator::make($this->state, [
            'date-administered' => "required|date|after:" . $yesterdaysDate,
            'vaccine_id' => "required",
            'herd_id' => "required",
        ])->validate();

        $this->vaccinationRecord->update($validationData);

        $this->dispatchBrowserEvent("hide-form", ["message" => "vaccination record updated successfully"]);

        return redirect()->to('/vaccination-expert/vaccination-records');
    }
    public function render()
    {
        $herds = Herd::all();
        $vaccines = Vaccine::all();
        return view('livewire.vaccination-expert.vaccination-record.edit-vacination-record-form', ['herds' => $herds, 'vaccines' => $vaccines]);
    }
}
