<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'WelcomeController@index');

Route::get('home', 'HomeController@index');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

Route::get('auth/getLogout', 'Auth\AuthController@getLogout');

//cms function

Route::post('/add_song','HomeController@add_song');
Route::post('/deactivate_song','HomeController@deactivate_song');
Route::post('/get_edit_song','HomeController@get_edit_song');
Route::post('/update_song','HomeController@update_song');