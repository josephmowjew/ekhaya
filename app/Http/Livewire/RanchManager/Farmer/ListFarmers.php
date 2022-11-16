<?php

namespace App\Http\Livewire\RanchManager\Farmer;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Farmer;
use Livewire\Component;

class ListFarmers extends AdminComponent
{
    public $farmerToBeDeletedId;
    public $searchTerm = null;


    public function confirmFarmerRemoval($farmerId)
    {
        $this->farmerToBeDeletedId = $farmerId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }

    public function deteleFarmer()
    {
        //fetch role by id

        $farmer = Farmer::findOrFail($this->farmerToBeDeletedId);

        $farmer->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "Farmer removed successfully"]);
    }

    public function render()
    {

        $farmers = Farmer::query()
            ->where('firstName', 'like', '%' . $this->searchTerm . '%')
            ->orWhere('surname', 'like', '%' . $this->searchTerm . '%')
            ->orWhere('locationName', 'like', '%' . $this->searchTerm . '%')
            ->paginate(10);

        $locations = $this->getLocations($farmers);

        return view('livewire.ranch-manager.farmer.list-farmers', ['farmers' => $farmers, 'locations' => $locations]);
    }

    private function getLocations($farmers)
    {
        $locations = [];

        if ($farmers->count() > 0) {

            for ($i = 0; $i < $farmers->count(); $i++) {

                $locations[] = [$farmers[$i]->firstName, $farmers[$i]->latitude, $farmers[$i]->longitude];
            }
        }

        return $locations;
    }
}
