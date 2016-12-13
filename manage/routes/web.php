<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

Route::group(['middleware' => ['web','auth']], function () {

    Route::get('/', function () {
          return Redirect::action('VihicleController@index');

});
});

Auth::routes();

Route::group(['middleware' => 'authenticated'], function () {
  Route::resource('vihicle', 'VihicleController');
        // Uses Auth Middleware
    });

Route::get('/home', 'HomeController@index');
//Route::get('vihicle', 'VihicleController@getPDF');
Route::get('vihecle/{id}', ['as' => 'vihecle.getPDF', 'uses' =>  'VihicleController@getPDF'] );

//for apis
