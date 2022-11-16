<?php

namespace App\Http\Livewire\Report;

use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateReportForm extends Component
{
    public $state = [];

    public function createReport()
    {
        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'start_date' => "required|integer",
            'end_date' => "required|integer|after:start_date"
        ])->validate();

        return redirect('/reports');
    }

    public function render()
    {
        return view('livewire.report.create-report-form');
    }
}
