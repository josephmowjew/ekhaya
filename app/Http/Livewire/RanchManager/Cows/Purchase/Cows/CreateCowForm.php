<?php

namespace App\Http\Livewire\RanchManager\Cows\Purchase\Cows;

use App\Models\Breed;
use App\Models\CattlePurchase;
use App\Models\Cow;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateCowForm extends Component
{
    public $state = [];
    public $purchase;
    public $tag;


    public function mount($purchaseId = null)
    {
        //check if the purchase Id has been submited in the request
        if ($purchaseId != 0) {
            $this->purchase = CattlePurchase::findOrFail($purchaseId);
        }

        $this->state['tag'] = $this->generateTag();
    }

    public function createCow()
    {
        $validationData = Validator::make($this->state, [
            'tag' => "required|unique:cows",
            'age' => "required|numeric",
            'color' => "required",
            'gender' => "required",
            "weight" => "required|numeric",
            "breed_id" => "required",

        ])->validate();

        $validationData['cattle_purchase_id'] = $this->purchase->id;


        //create user account

        $cow = Cow::create($validationData);

        $this->dispatchBrowserEvent("alert", ["message" => "Cow added successfully"]);

        return redirect()->to("ranch-manager/purchases/" . $this->purchase->id . "/cows");
    }
    public function render()
    {
        $breeds = Breed::all();

        return view('livewire.ranch-manager.cows.purchase.cows.create-cow-form', ['breeds' => $breeds]);
    }

    public function generateTag()
    {

        //get the last added cow

        $lastCow = Cow::latest()->first();

        if ($lastCow == null) {

            return "Ekhaya" . date('Y') . "1";
        } else {
            "Ekhaya" . date('Y') . $lastCow->id + 1; //year
        }
    }
}
