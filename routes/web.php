<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\WordController;
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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::get('/createbook', [BookController::class, 'index'])->name('bookcreate');
    Route::post('/book', [BookController::class, 'store'])->name('store');
    Route::get('/createword', [WordController::class, 'indexword'])->name('createword');
    Route::get('/viewbook', [BookController::class, 'Bookview'])->name('bookview');
    Route::post('/word', [WordController::class, 'store'])->name('wordstore');
    
});

require __DIR__.'/auth.php';