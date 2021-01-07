<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Items
Route::resource('/item', 'ItemController');
Route::resource('item.show', 'ItemController');
Route::resource('item.update', 'ItemController');
Route::resource('item.destroy', 'ItemController');

// Categories
Route::resource('/category', 'CategoryController');
Route::resource('category.index', 'CategoryController');