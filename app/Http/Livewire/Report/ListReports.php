<?php

namespace App\Http\Livewire\Report;

use App\Models\Farmer;
use Livewire\Component;

class ListReports extends Component
{
    public function render()
    {
        $farmers_gender_population = $this->generateReportOnFamers();



        return view('livewire.report.list-reports', compact(['farmers_gender_population']));
    }

    private function generateReportOnFamers()
    {
        $population = [];

        $total_population = Farmer::count();

        $male_population = Farmer::where(['gender' => "male"])->count();
        $famele_population = Farmer::where(['gender' => "female"])->count();

        $population[] = ($male_population / $total_population) * 100;
        $population[] = ($famele_population / $total_population) * 100;

        return $population;
    }
}
