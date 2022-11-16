<?php

namespace App\Http\Livewire\FeedingExpert\FeedingSchedule;

use App\Models\Feed;
use App\Models\FeedingSchedule;
use App\Models\Herd;
use App\Models\User;
use App\Notifications\FeedScheduleReminderNotification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;

class CreateFeedingScheduleForm extends Component
{
    public $state = [];

    public function createSchedule()
    {
        $yesterdaysDate = date('Y-m-d', strtotime("-1 day")); //yesterday

        $validationData = Validator::make($this->state, [
            'start-date' => "required|date|after:" . $yesterdaysDate,
            'feed_id' => "required",
            'herd_id' => "required",
            'amount' => "max:1000000",
            "feeding_times" => "required",
            "duration" => "required",
        ])->validate();


        //create user account

        $schedule = FeedingSchedule::create($validationData);


        Auth()->user()->notify(new FeedScheduleReminderNotification());


        $this->dispatchBrowserEvent("alert", ["message" => "Feeding Schedule created successfully"]);

        return redirect()->to('/feeding-expert/feeding-schedules');
    }
    public function render()
    {
        $feeds = Feed::all();
        $herds = Herd::all();
        $feeding_times = ["once a day", "2 times a day", "3 times a day"];
        $durations = ["1 month", "2 months", "3 months", "4 months", "5 months", "6 months", "1 year", "2 years", "3 years"];

        return view('livewire.feeding-expert.feeding-schedule.create-feeding-schedule-form', [
            'feeds' => $feeds,
            'herds' => $herds,
            'feeding_times' => $feeding_times,
            'durations' => $durations
        ]);
    }
}
