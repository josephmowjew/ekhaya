<?php

namespace App\Http\Livewire\RanchManager\Cows\Purchase;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\CattlePurchase;
use Livewire\Component;

class ListPurchases extends AdminComponent
{
    public $purchaseToBeDeletedId;
    public $searchTerm = null;

    public function confirmPurchaseRemoval($purchaseId)
    {
        $this->purchaseToBeDeletedId = $purchaseId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }
    public function deletePurchase()
    {
        //fetch role by id

        $purchase = CattlePurchase::findOrFail($this->purchaseToBeDeletedId);

        $purchase->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "Purchase record removed successfully"]);
    }
    public function render()
    {
        $purchases = CattlePurchase::latest()->paginate(10);

        return view('livewire.ranch-manager.cows.purchase.list-purchases', ['purchases' => $purchases]);
    }
}
