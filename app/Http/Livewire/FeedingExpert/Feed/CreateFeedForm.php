<?php

namespace App\Http\Livewire\FeedingExpert\Feed;

use App\Models\Feed;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateFeedForm extends Component
{
    public $state = [];

    public function createFeed()
    {
        //validate input coming from the user

        $validateData =  Validator::make($this->state, [
            'name' => "required|unique:feeds"
        ])->validate();

        Feed::create($validateData);

        //send a reminder email


        //hide the form
        $this->dispatchBrowserEvent("hide-form", ["message" => "Feed added successfully"]);

        return redirect()->to('/feedingExperts/feeds');
    }

    public function render()
    {
        return view('livewire.feeding-expert.feed.create-feed-form');
    }
}
