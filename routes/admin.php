<?php

use App\Http\Controllers\Account1Controller;
use App\Http\Controllers\AccountController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DataTablesController;
use App\Http\Controllers\PartnerController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\QuotationController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PDFController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\ProjectController;
use App\Models\Partner;
use App\Models\Project;

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
    Route::resource('accounts', AccountController::class);

    //Project
    Route::get('list/projects',[Project::class,'getProjectList']);
    Route::resource('projects', ProjectController::class);
    

    Route::get('/dashboard', [AdminController::class, 'dashboard']);
    // Product
    Route::resource('products', ProductController::class);
    Route::get('/search/product/{text}', [ProductController::class, 'searchProduct']);

    Route::resource('users', UserController::class);

    // Partner
    Route::resource('partners', PartnerController::class);
    Route::get('list/partners', [Partner::class, 'getPartnerList']);

    // Permission
    Route::resource('permissions', PermissionController::class);

    // Quotation
    Route::resource('quotations', QuotationController::class);
    Route::get('quotations/approve/{id}/{user_id}', [QuotationController::class, 'quotationApprove'])->name('quotations.approve');
    Route::get('quotations/remove-approved/{id}', [QuotationController::class, 'removeApprove'])->name('quotations.remove-approved');
    Route::get('quotations/unlock/{id}', [QuotationController::class, 'unlockQuotation'])->name('quotations.unlock');
    

    Route::prefix('datatables')->group(function () {

        Route::get('/accounts', [DataTablesController::class, 'getAccountList']);

        Route::get('/quotations', [DataTablesController::class, 'getQuotationList']);

        Route::get('/products', [DataTablesController::class, 'getProductList']);
        Route::get('/products/enable/{id}/{enable}', [ProductController::class, 'enableUpdate']);
        Route::get('/products/feature/{id}/{feature}', [ProductController::class, 'featureUpdate']);

        Route::get('/users', [DataTablesController::class, 'getUserList']);
        Route::get('/users/enable/{id}/{enable}', [UserController::class, 'enableUpdate']);

        
    });
});

Route::get('custome/403', function () {
    return view('admin.content.custom.custom403');
})->name('custom403');

// Contact
Route::get('/search/contact/{text}', [ContactController::class, 'searchContact']);

// Partner
Route::get('/search/partner/{text}', [PartnerController::class, 'searchPartner']);

// Quotation
Route::get('/search/quotation/{text}', [QuotationController::class, 'searchQuotation']);

// AddItem
Route::get('quotation/add-item/{id}',[QuotationController::class, 'addItem']);
Route::get('quotation/update-item/{id}/{name}/{value}',[QuotationController::class, 'updateItem']);
Route::get('quotation/update-tax/{tax}',[QuotationController::class, 'updateTax']);
Route::get('quotation/delete-item/{id}',[QuotationController::class, 'deleteItem']);
Route::get('quotation/update-list',[QuotationController::class, 'updateList']);
Route::get('quotation/clear-list',[QuotationController::class, 'clearList']);

// Export PDF
Route::get('quotation-pdf/{id}', [PDFController::class, 'quotationPDF']);