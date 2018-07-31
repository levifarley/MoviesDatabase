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
    return view('blank');
});
Auth::routes();

Route::get('logout', ['as' => 'logout', 'uses' => 'Auth\LoginController@logout']);

Route::get('/home', 'HomeController@index')->name('home')->middleware('auth');

//////////////////////////////////////////////////////////////////////////

//  Backend template
Route::get('/template', function () {
    return view('backendtemplate');
})->middleware('auth');

//  Movies collection
Route::get('/movies', function () {
    return \App\Http\Controllers\MoviesController::getMovies();
})->middleware('auth');

//  Add movie to database
Route::post('/movieadded', function () {
    return \App\Http\Controllers\MoviesController::addMovie();
})->middleware('auth');

//  Get movie data
Route::get('/movieinfo/{title}', function ($title) {
    return \App\Http\Controllers\ApiController::getMovieData($title);
})->middleware('auth');

Route::get('/test', function () {
    return view('test');
})->middleware('auth');
