<?php

namespace App\Http\Livewire\FeedingExpert\Feed;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Feed;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class ListFeeds extends AdminComponent
{
    public $feedToBeDeletedId;
    public $searchTerm = null;

    public function confirmFeedRemoval($feedId)
    {
        $this->feedToBeDeletedId = $feedId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }
    public function deleteFeed()
    {
        //fetch role by id

        $feed = Feed::findOrFail($this->feedToBeDeletedId);

        $feed->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "User removed successfully"]);
    }

    public function render()
    {
        $feeds = Feed::query()
            ->where('name', 'like', '%' . $this->searchTerm . '%')
            ->paginate(10);
        return view('livewire.feeding-expert.feed.list-feeds', ['feeds' => $feeds]);
    }
}
