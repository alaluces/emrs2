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

Route::group(['prefix' => 'voyager'], function () {
    // Voyager routes
    Voyager::routes();
});

$router->get('/', ['as' => 'root', function () {
    return redirect("/emrs/");
}]);

$router->get('admin', ['as' => 'admin', function () {
    return redirect("/emrs/");
}]);

Route::group(['prefix' => 'emrs'], function () {

    // Voyager routes
    Voyager::routes();

    // My custom routes
    Route::post('appointments/add/{id}', ['uses' => 'AppointmentController@add', 'as' => 'appointments.add']);
    Route::post('appointments/cancel/{id}', ['uses' => 'AppointmentController@cancel', 'as' => 'appointments.cancel']);
    Route::get('appointments', ['uses' => 'AppointmentController@index', 'as' => 'appointments.index']);
    Route::get('appointments/viewdate/{date}', ['uses' => 'AppointmentController@index', 'as' => 'appointments.viewdate']);
    Route::post('appointments/start/{id}', ['uses' => 'AppointmentController@startTreatmentByAppointmentId', 'as' => 'appointments.startTreatmentByAppointmentId']);
    Route::get('appointments/view/{id}', ['uses' => 'AppointmentController@viewTreatmentByAppointmentId', 'as' => 'appointments.viewTreatmentByAppointmentId']);
    Route::post('appointments/setViewDate/', ['uses' => 'AppointmentController@setViewDate', 'as' => 'appointments.setViewDate']);

    Route::post('treatments/save/', ['uses' => 'TreatmentController@save', 'as' => 'treatments.save']);
    Route::get('treatments/view/{id}', ['uses' => 'TreatmentController@view', 'as' => 'treatments.view']);

});
