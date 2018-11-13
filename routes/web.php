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
});


Route::group(['prefix' => 'admin'], function () {

    // Voyager routes
    Voyager::routes();

    // My custom routes
    Route::post('appointments/add/{id}', ['uses' => 'Appointment@add', 'as' => 'add']);
    Route::get('appointments', ['uses' => 'Appointment@index', 'as' => 'appointments.index']);



});

//Route::post('login', ['uses' => $namespacePrefix.'VoyagerAuthController@postLogin', 'as' => 'postlogin']);
