<?php

namespace App\Http\Livewire\FeedingExpert\Feed;

use App\Models\Feed;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class EditFeedForm extends Component
{
    public $feed;
    public $state = [];

    public function mount(Feed $feed)
    {
        $this->feed = $feed;

        $this->state = $this->feed->toArray();
    }

    public function updateFeed()
    {
        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'name' => "required|unique:feeds,name," . $this->feed->id
        ])->validate();

        $this->feed->update($validateData);

        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Feed updated successfully"]);

        return redirect()->to('/feedingExperts/feeds');
    }

    public function render()
    {
        return view('livewire.feeding-expert.feed.edit-feed-form');
    }
}
