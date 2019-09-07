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

/*Route::get('/', function () {
    return view('welcome');
});*/


Auth::routes(['verify' => true]);

Route::get('/', 'FrontendController@index');
Route::get('/home', 'HomeController@index');
Route::get('/product', 'ProductController@index');
Route::get('/product/form', 'ProductController@formload');

//Route::get('/Premiumproduct', 'PremiumproductController@index');
//***********//**********//******
Route::post('/product/insert', 'ProductController@productinsert');
Route::get('/product/edit/{id}', 'ProductController@productedit');
Route::post('/product/update', 'ProductController@productupdate');
Route::post('/product/delete/{id}', 'ProductController@productdelete');
Route::post('/product/restore/{id}', 'ProductController@productrestore');
Route::get('/product/parmanentdelete/{id}', 'ProductController@parmanentdelete');
Route::resource('/category', 'CategoryController');

// Product View Route //
Route::get('/product/view/{id}', 'FrontendController@singleview');