<?php

namespace App\Http\Livewire\RanchManager\Event;

use App\Models\Event;
use App\Models\Role;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class EditEventForm extends Component
{
    public $event;
    public $state = [];

    public function mount(Event $event)
    {
        $this->event = $event;

        $this->state = $this->event->toArray();
    }

    public function updateEvent()
    {


        //validate input coming from the user


        $validateData =  Validator::make($this->state, [
            'title' => "required",
            'description' => 'required',
            'date' => "required|date",
            'role_id' => 'required'

        ])->validate();

        $this->event->update($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Event record updated successfully"]);

        return redirect()->to('/ranch-manager/events');
    }
    public function render()
    {
        $roles = Role::all();
        return view('livewire.ranch-manager.event.edit-event-form', ['roles' => $roles]);
    }
}
