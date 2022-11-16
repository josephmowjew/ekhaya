<?php

namespace App\Http\Livewire\RanchManager\Event;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Event;
use Livewire\Component;

class ListEvents extends AdminComponent
{
    public $eventToBeDeletedId;
    public $searchTerm = null;

    public function confirmEventRemoval($eventId)
    {
        $this->eventToBeDeletedId = $eventId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }
    public function deleteEvent()
    {
        //fetch role by id

        $event = Event::findOrFail($this->eventToBeDeletedId);

        $event->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "Event record removed successfully"]);
    }


    public function render()
    {
        $events = Event::query()
            ->where('title', 'like', '%' . $this->searchTerm . '%')
            ->orWhere('description', 'like', '%' . $this->searchTerm . '%')
            ->paginate(10);

        return view('livewire.ranch-manager.event.list-events', ['events' => $events]);
    }
}
