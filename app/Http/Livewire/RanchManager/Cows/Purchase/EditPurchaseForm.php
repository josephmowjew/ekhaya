<?php

namespace App\Http\Livewire\RanchManager\Cows\Purchase;

use App\Models\CattlePurchase;
use App\Models\Farmer;
use App\Models\Herd;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class EditPurchaseForm extends Component
{
    public $state = [];
    public $purchase;

    public function mount(CattlePurchase $purchase)
    {
        $this->purchase = $purchase;

        $this->state = $this->purchase->toArray();
    }

    public function updatePurchase()
    {

        $validationData = Validator::make($this->state, [
            'total_price' => "required|numeric|max:999999",
            'farmer_id' => "required|numeric",
            'herd_id' => "required|numeric",
            'total_calves' => "required|max:50000",
        ])->validate();

        $this->purchase->update($validationData);

        $this->dispatchBrowserEvent("hide-form", ["message" => "Purchase record updated successfully"]);

        return redirect()->to('/ranch-manager/purchases');
    }
    public function render()
    {
        $herds = Herd::all();
        $farmers = Farmer::all();
        return view('livewire.ranch-manager.cows.purchase.edit-purchase-form', ['herds' => $herds, 'farmers' => $farmers]);
    }
}
