<?php

namespace App\Http\Livewire\VaccinationExpert\Vaccine;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Vaccine;
use Livewire\Component;

class ListVaccines extends AdminComponent
{
    public $vaccineToBeDeletedId;
    public $searchTerm = null;


    public function confirmVaccineRemoval($vaccineId)
    {
        $this->vaccineToBeDeletedId = $vaccineId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }

    public function deleteVaccine()
    {
        //fetch role by id

        $vaccine = Vaccine::findOrFail($this->vaccineToBeDeletedId);

        $vaccine->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "Vaccine removed successfully"]);
    }

    public function render()
    {
        $vaccines = Vaccine::query()
            ->where('name', 'like', '%' . $this->searchTerm . '%')
            ->paginate(10);
        return view('livewire.vaccination-expert.vaccine.list-vaccines', ['vaccines' => $vaccines]);
    }
}
