<?php

namespace App\Http\Livewire\RanchManager\Event;

use App\Models\Event;
use App\Models\Role;
use App\Notifications\EventNotification;
use DateTime;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateEventForm extends Component
{

    public $state = [];

    public function createEvent()
    {
        //validate input coming from the user

        $yesterdaysDate = date('Y-m-d', strtotime("-1 day")); //yesterday
        $validateData =  Validator::make($this->state, [
            'title' => "required",
            'description' => 'required',
            'date' => "required|date|after:" . $yesterdaysDate,
            'role_id' => 'required'

        ])->validate();

        Event::create($validateData);

        //send email when event has been created
        Auth()->user()->notify(new EventNotification($validateData['title'], $validateData['date']));

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Event created successfully"]);


        return redirect()->to('/ranch-manager/events');
    }
    public function render()
    {
        $roles = Role::all();

        return view('livewire.ranch-manager.event.create-event-form', ['roles' => $roles]);
    }
}
