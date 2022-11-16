<?php

namespace App\Http\Livewire\RanchManager\Cows\Purchase\Cows;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\CattlePurchase;
use App\Models\Cow;
use Livewire\Component;

class ListCows extends AdminComponent
{
    public $purchase;
    public $cowToBeDeletedId;
    public $searchTerm = null;

    public function mount($purchaseId = null)
    {
        //check if the purchase Id has been submited in the request
        if ($purchaseId != 0) {
            $this->purchase = CattlePurchase::findOrFail($purchaseId);
        }
    }



    public function confirmCowRemoval($cowid)
    {
        //set cow to be deleted class property
        $this->cowToBeDeletedId = $cowid;
        $this->dispatchBrowserEvent("show-delete-modal");
    }
    public function deleteCow()
    {
        //fetch cow by id

        $cow = Cow::findOrFail($this->cowToBeDeletedId);

        $cow->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "Cow removed successfully"]);
    }
    public function render()
    {

        //find cows that have the id of the current instance of the purchase record

        if ($this->purchase != null) {
            $cows = Cow::where(['cattle_purchase_id' => $this->purchase->id])->latest()->paginate(10);
        } else {
            $cows = Cow::latest()->paginate(10);
        }

        return view('livewire.ranch-manager.cows.purchase.cows.list-cows', ['cows' => $cows]);
    }
}
