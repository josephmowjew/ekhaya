<?php

namespace App\Http\Livewire\FeedingExpert\FeedingSchedule;

use App\Models\Feed;
use App\Models\FeedingSchedule;
use App\Models\Herd;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class EditFeedingScheduleForm extends Component
{
    public $state = [];
    public $feedingSchedule;

    public function mount(FeedingSchedule $feedingSchedule)
    {
        $this->feedingSchedule = $feedingSchedule;

        $this->state = $this->feedingSchedule->toArray();
    }

    public function updateSchedule()
    {


        $yesterdaysDate = date('Y-m-d', strtotime("-1 day")); //yesterday
        $validationData = Validator::make($this->state, [
            'start_date' => "required|date|after:" . $yesterdaysDate,
            'feed_id' => "required",
            'herd_id' => "required",
            'amount' => "less_than:1000000",
            "feeding_times" => "required",
            "duration" => "required",
        ])->validate();


        $this->feedingSchedule->update($validationData);

        $this->dispatchBrowserEvent("hide-form", ["message" => "Feeding schedule updated successfully"]);

        return redirect()->to('/feeding-expert/feeding-schedules');
    }
    public function render()
    {
        $feeds = Feed::all();
        $herds = Herd::all();
        $feeding_times = ["once a day", "2 times a day", "3 times a day"];
        $durations = ["1 month", "2 months", "3 months", "4 months", "5 months", "6 months", "1 year", "2 years", "3 years"];

        return view('livewire.feeding-expert.feeding-schedule.edit-feeding-schedule-form', [
            'feeds' => $feeds,
            'herds' => $herds,
            'feeding_times' => $feeding_times,
            'durations' => $durations
        ]);
    }
}
