<?php

namespace App\Http\Livewire\RanchManager\Cows\Purchase;

use App\Models\CattlePurchase;
use App\Models\Farmer;
use App\Models\Herd;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreatePurchaseForm extends Component
{
    public $state = [];

    public function createPurchase()
    {

        $validationData = Validator::make($this->state, [
            'total_price' => "required|numeric|max:999999",
            'farmer_id' => "required|numeric",
            'herd_id' => "required|numeric",
            'total_calves' => "required|max:50000",
        ])->validate();


        //create user account

        $purchase = CattlePurchase::create($validationData);

        $this->dispatchBrowserEvent("alert", ["message" => "Purchase record created successfully"]);

        return redirect()->to('/ranch-manager/purchases');
    }
    public function render()
    {
        $herds = Herd::all();
        $farmers = Farmer::all();

        return view('livewire.ranch-manager.cows.purchase.create-purchase-form', ['farmers' => $farmers, 'herds' => $herds]);
    }
}
