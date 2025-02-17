<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BranchController;
use App\Http\Controllers\EnquiryController;

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
Route::get('/contact', function () {
    return view('pages.contact');
});
Route::post('/contact_form', [EnquiryController:: Class , 'contact']);
Route::post('/loan_form', [EnquiryController:: Class , 'loan_form']);
Route::get('/about', function () {
    return view('pages.about');
});
Route::get('/loan', function () {
    return view('pages.loan');
});
Route::get('/gallery', function () {
    return view('pages.gallery');
});
// Route::post('/loan_form', [App\Http\Controllers\LoanController::class, 'store']);

Route::resource('branch', BranchController::class);
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');