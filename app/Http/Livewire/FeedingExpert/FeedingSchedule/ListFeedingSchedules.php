<?php

namespace App\Http\Livewire\FeedingExpert\FeedingSchedule;

use App\Http\Livewire\Admin\AdminComponent;
use App\Models\Feed;
use App\Models\FeedingSchedule;
use App\Models\Herd;
use Livewire\Component;

class ListFeedingSchedules extends AdminComponent
{
    public $feedingScheduleToBeDeletedId;
    public $searchTerm = null;

    public function confirmFeedingScheduleRemoval($feedingScheduleId)
    {
        $this->feedingScheduleToBeDeletedId = $feedingScheduleId;
        $this->dispatchBrowserEvent("show-delete-modal");
    }
    public function deleteSchedule()
    {
        //fetch role by id

        $schedule = FeedingSchedule::findOrFail($this->feedingScheduleToBeDeletedId);

        $schedule->delete();

        $this->dispatchBrowserEvent("hide-confirmation-form", ["message" => "Feeding schedule removed successfully"]);
    }
    public function render()
    {
        $feedingSchedules = FeedingSchedule::latest()->paginate(10);

        return view('livewire.feeding-expert.feeding-schedule.list-feeding-schedules', [
            'feedingSchedules' => $feedingSchedules,
        ]);
    }
}
