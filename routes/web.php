<?php

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
    return view('welcome');
    // Voyager routes

});

Route::group(['prefix' => 'voyager'], function () {
    // Voyager routes
    Voyager::routes();
});

Route::group(['prefix' => 'admin'], function () {

    // Voyager routes
    Voyager::routes();

    // My custom routes
    Route::post('appointments/add/{id}', ['uses' => 'AppointmentController@add', 'as' => 'appointments.add']);
    Route::post('appointments/cancel/{id}', ['uses' => 'AppointmentController@cancel', 'as' => 'appointments.cancel']);
    Route::get('appointments', ['uses' => 'AppointmentController@index', 'as' => 'appointments.index']);

    Route::post('treatments/save/', ['uses' => 'TreatmentController@save', 'as' => 'treatments.save']);




});

//Route::post('login', ['uses' => $namespacePrefix.'VoyagerAuthController@postLogin', 'as' => 'postlogin']);
