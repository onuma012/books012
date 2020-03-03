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
Route::get('about','SiteController@index')->name('about');

Route::get('typebooks','TypeBooksController@index')->name('typebooks');
Route::get('typebooks/destroy/{id}', 'TypeBooksController@destroy');

// ตั้งชื่อ method index ว่า books
Route::resource('books', 'BooksController')->name('index', 'books');

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
