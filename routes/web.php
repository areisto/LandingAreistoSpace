<?php

use App\Http\Controllers\Site\PaymentController;
use App\Http\Controllers\Site\HomeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/privacy-policy', [HomeController::class, 'privacy'])->name('privacy');
Route::get('/contact', [HomeController::class, 'contact'])->name('contact');
Route::post('/subscribe', [HomeController::class, 'subscribe'])->name('newsletter.subscribe');
Route::post('/contact-form-submit', [HomeController::class, 'submitContactForm'])->name('home.contact.submit');
Route::post('/crosspay/redirect', [PaymentController::class, 'redirectToCrosspay'])->name('crosspay.redirect');
Route::get('/crosspay/callback', [PaymentController::class, 'handleCallback'])->name('crosspay.callback');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
