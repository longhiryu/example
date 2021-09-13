<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DataTablesController;
use App\Http\Controllers\PartnerController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\QuotationController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PDFController;


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

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [AdminController::class, 'dashboard']);
    // Product
    Route::resource('products', ProductController::class);
    Route::get('/search/product/{text}', [ProductController::class, 'searchProduct']);

    Route::resource('users', UserController::class);
    Route::resource('partners', PartnerController::class);
    Route::resource('quotations', QuotationController::class);
    

    Route::prefix('datatables')->group(function () {
        Route::get('/products', [DataTablesController::class, 'getProductList']);
        Route::get('/products/enable/{id}/{enable}', [ProductController::class, 'enableUpdate']);
        Route::get('/products/feature/{id}/{feature}', [ProductController::class, 'featureUpdate']);

        Route::get('/users', [DataTablesController::class, 'getUserList']);
        Route::get('/users/enable/{id}/{enable}', [UserController::class, 'enableUpdate']);

        Route::get('/partners', [DataTablesController::class, 'getPartnerList']);

    });
});

// Contact
Route::get('/search/contact/{text}', [ContactController::class, 'searchContact']);

// Partner
Route::get('/search/partner/{text}', [PartnerController::class, 'searchPartner']);

// AddItem
Route::get('quotation/add-item/{id}',[QuotationController::class, 'addItem']);
Route::get('quotation/update-item/{id}/{name}/{value}',[QuotationController::class, 'updateItem']);
Route::get('quotation/update-tax/{tax}',[QuotationController::class, 'updateTax']);
Route::get('quotation/delete-item/{id}',[QuotationController::class, 'deleteItem']);
Route::get('quotation/update-list',[QuotationController::class, 'updateList']);
Route::get('quotation/clear-list',[QuotationController::class, 'clearList']);

// Export PDF
Route::get('quotation-pdf/{id}', [PDFController::class, 'quotationPDF']);