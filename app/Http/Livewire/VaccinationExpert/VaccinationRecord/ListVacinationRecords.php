<?php

namespace App\Http\Livewire\VaccinationExpert\VaccinationRecord;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\VaccinationRecord;
use Livewire\Component;

class ListVacinationRecords extends AdminComponent
{
    public $vaccinationRecordToBeDeletedId;
    public $searchTerm = null;

    public function confirmVaccinationRecordRemoval($vacinationRecordId)
    {
        $this->vaccinationRecordToBeDeletedId = $vacinationRecordId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }
    public function deleteVaccinationRecord()
    {
        //fetch role by id

        $vaccinationRecord = VaccinationRecord::findOrFail($this->vaccinationRecordToBeDeletedId);

        $vaccinationRecord->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "Vaccination record removed successfully"]);
    }
    public function render()
    {
        $vaccinationRecords = VaccinationRecord::latest()->paginate(10);

        return view('livewire.vaccination-expert.vaccination-record.list-vacination-records', ['vaccinationRecords' => $vaccinationRecords]);
    }
}
