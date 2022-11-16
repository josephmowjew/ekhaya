<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Livewire\Admin\Roles\ListRoles;
use App\Http\Livewire\Admin\Users\CreateUserForm;
use App\Http\Livewire\Admin\Users\EditUserForm;
use App\Http\Livewire\Admin\Users\UserList;
use App\Http\Livewire\FeedingExpert\Feed\CreateFeedForm;
use App\Http\Livewire\FeedingExpert\Feed\EditFeedForm;
use App\Http\Livewire\FeedingExpert\Feed\ListFeeds;
use App\Http\Livewire\FeedingExpert\FeedingSchedule\CreateFeedingScheduleForm;
use App\Http\Livewire\FeedingExpert\FeedingSchedule\EditFeedingScheduleForm;
use App\Http\Livewire\FeedingExpert\FeedingSchedule\ListFeedingSchedules;
use App\Http\Livewire\RanchManager\Cow\Breed\ListBreeds;
use App\Http\Livewire\RanchManager\Cows\Breed\CreateBreedForm;
use App\Http\Livewire\RanchManager\Cows\Breed\EditBreedForm;
use App\Http\Livewire\RanchManager\Cows\Breed\ListBreeds as BreedListBreeds;
use App\Http\Livewire\RanchManager\Cows\CreateHerdForm;
use App\Http\Livewire\RanchManager\Cows\EditHerdForm;
use App\Http\Livewire\RanchManager\Cows\HerdList;
use App\Http\Livewire\RanchManager\Cows\Purchase\Cows\CreateCowForm;
use App\Http\Livewire\RanchManager\Cows\Purchase\Cows\EditCowForm;
use App\Http\Livewire\RanchManager\Cows\Purchase\Cows\ListCows;
use App\Http\Livewire\RanchManager\Cows\Purchase\CreatePurchaseForm;
use App\Http\Livewire\RanchManager\Cows\Purchase\EditPurchaseForm;
use App\Http\Livewire\RanchManager\Cows\Purchase\ListPurchases;
use App\Http\Livewire\RanchManager\Event\CreateEventForm;
use App\Http\Livewire\RanchManager\Event\EditEventForm;
use App\Http\Livewire\RanchManager\Event\ListEvents;
use App\Http\Livewire\RanchManager\Farmer\CreateFarmerForm;
use App\Http\Livewire\RanchManager\Farmer\EditFarmerForm;
use App\Http\Livewire\RanchManager\Farmer\ListFarmers;
use App\Http\Livewire\Report\CreateReportForm;
use App\Http\Livewire\Report\ListReports;
use App\Http\Livewire\VaccinationExpert\VaccinationRecord\CreateVacinationRecordForm;
use App\Http\Livewire\VaccinationExpert\VaccinationRecord\EditVacinationRecordForm;
use App\Http\Livewire\VaccinationExpert\VaccinationRecord\ListVacinationRecords;
use App\Http\Livewire\VaccinationExpert\Vaccine\CreateVaccineForm;
use App\Http\Livewire\VaccinationExpert\Vaccine\EditVaccineForm;
use App\Http\Livewire\VaccinationExpert\Vaccine\ListVaccines;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});


Route::group(['middleware' => 'auth'], function () {

    Route::get('dashboard', DashboardController::class)->name("dashboard");
    Route::get('admin/roles', ListRoles::class)->name('admin.roles');
    Route::get('admin/users', UserList::class)->name('admin.users');
    Route::get('admin/users/create', CreateUserForm::class)->name('admin.users.create');
    Route::get('admin/users/{user}/edit', EditUserForm::class)->name('admin.users.edit');

    Route::get('reports/create', CreateReportForm::class)->name('reports.create');
    Route::get('reports', ListReports::class)->name('reports');

    Route::get('ranch-manager/herds', HerdList::class)->name('ranch-manager.herds');
    Route::get('ranch-manager/herds/create', CreateHerdForm::class)->name('ranch-manager.herds.create');
    Route::get('ranch-manager/herds/{herd}/edit', EditHerdForm::class)->name('ranch-manager.herds.edit');

    Route::get('ranch-manager/farmers', ListFarmers::class)->name('ranch-manager.farmers');
    Route::get('ranch-manager/farmers/{farmer}/edit', EditFarmerForm::class)->name('ranch-manager.farmers.edit');
    Route::get('ranch-manager/farmers/create', CreateFarmerForm::class)->name('ranch-manager.farmers.create');

    Route::get('ranch-manager/purchases', ListPurchases::class)->name('ranch-manager.purchases');
    Route::get('ranch-manager/purchases/{purchase}/edit', EditPurchaseForm::class)->name('ranch-manager.purchases.edit');
    Route::get('ranch-manager/purchases/create', CreatePurchaseForm::class)->name('ranch-manager.purchases.create');

    Route::get('ranch-manager/purchases/{purchaseId?}/cows', ListCows::class)->name('ranch-manager.purchases.cows');
    Route::get('ranch-manager/purchases/{cow}/cows/edit', EditCowForm::class)->name('ranch-manager.purchases.cows.edit');
    Route::get('ranch-manager/purchases/{purchaseId?}/cows/create', CreateCowForm::class)->name('ranch-manager.purchases.cows.create');

    Route::get('ranch-manager/events', ListEvents::class)->name('ranch-manager.events');
    Route::get('ranch-manager/{event}/edit', EditEventForm::class)->name('ranch-manager.events.edit');
    Route::get('ranch-manager/events/create', CreateEventForm::class)->name('ranch-manager.events.create');

    Route::get('feedingExperts/feeds', ListFeeds::class)->name('feedingExperts.feeds');
    Route::get('feedingExperts/{feed}/edit', EditFeedForm::class)->name('feedingExperts.feeds.edit');
    Route::get('feedingExperts/feeds/create', CreateFeedForm::class)->name('feedingExperts.feeds.create');

    Route::get('feeding-expert/feeding-schedules', ListFeedingSchedules::class)->name('feeding-expert.feeding-schedules');
    Route::get('feeding-expert/feeding-schedule/{feedingSchedule}/edit', EditFeedingScheduleForm::class)->name('feeding-expert.feeding-schedules.edit');
    Route::get('feeding-expert/feeding-schedule/create', CreateFeedingScheduleForm::class)->name('feeding-expert.feeding-schedules.create');

    Route::get('ranch-manager/cows/breeds', BreedListBreeds::class)->name('ranch-manager.breeds');
    Route::get('ranch-manager/cows/breeds/{breed}/edit', EditBreedForm::class)->name('ranch-manager.breeds.edit');
    Route::get('ranch-manager/cows/breeds/create', CreateBreedForm::class)->name('ranch-manager.breeds.create');

    Route::get('vaccination-expert/vaccines', ListVaccines::class)->name('vaccination-expert.vaccines');
    Route::get('vaccination-expert/vaccines/create', CreateVaccineForm::class)->name('vaccination-expert.vaccines.create');
    Route::get('vaccination-expert/vaccines/{vaccine}/edit', EditVaccineForm::class)->name('vaccination-expert.vaccines.edit');

    Route::get('vaccination-expert/vaccination-records', ListVacinationRecords::class)->name('vaccination-expert.vaccination-records');
    Route::get('vaccination-expert/vaccination-records/create', CreateVacinationRecordForm::class)->name('vaccination-expert.vaccination-records.create');
    Route::get('vaccination-expert/vaccination-records/{vaccinationRecord}/edit', EditVacinationRecordForm::class)->name('vaccination-expert.vaccination-records.edit');
});
