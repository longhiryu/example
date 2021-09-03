<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\DataTablesController;
use App\Http\Controllers\ProductController;
use App\Models\Product;
use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "admin" middleware group. Now create something great!
|
*/
Route::get('/dashboard',[AdminController::class,'dashboard']);
Route::resource('products', ProductController::class);
Route::prefix('datatables')->group(function(){
    Route::get('/products',[DataTablesController::class,'getProductList']);
    Route::get('/products/enable/{id}/{enable}',[ProductController::class,'enableUpdate']);
    Route::get('/products/feature/{id}/{feature}',[ProductController::class,'featureUpdate']);
});