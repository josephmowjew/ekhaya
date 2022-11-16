<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Cow;
use App\Models\Farmer;
use App\Models\Herd;
use App\Models\User;
use App\Models\VaccinationRecord;
use App\Models\Vaccine;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        //

        //get the number of cows in the system

        $cowsCount = Cow::count();
        $farmersCount = Farmer::count();
        $scheduledVaccinations = VaccinationRecord::count();
        $usersCount = User::count();
        $vaccinesAvailable = Vaccine::count();
        $herdsAvailable = Herd::count();




        return view("dashboard", compact(['cowsCount', 'farmersCount', 'scheduledVaccinations', 'usersCount', 'vaccinesAvailable', 'herdsAvailable']));
    }
}
