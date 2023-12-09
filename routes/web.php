<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\WordController;
use App\Http\Controllers\WordViewController;
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
Route::get('/wordview', [WordViewController::class, 'index'])->name('wordtableview');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::get('/createbook', [BookController::class, 'index'])->name('bookcreate');
    Route::post('/viewbook', [BookController::class, 'store'])->name('store');
    Route::get('/editbook/{id}', [BookController::class, 'editbook'])->name('editcreate');
    Route::post('/updatebook', [BookController::class, 'updatebook'])->name('updatebook');
    Route::get('/viewbook', [BookController::class, 'Bookview'])->name('bookview');
    
    Route::get('/createword', [WordController::class, 'indexword'])->name('createword');
    Route::post('/word', [WordController::class, 'store'])->name('wordstore');
    Route::get('/viewword', [WordController::class, 'Wordview'])->name('wordview');
    Route::get('/editword/{id}', [WordController::class, 'editword'])->name('editword');
    Route::post('/updateword', [WordController::class, 'updateword'])->name('updateword');
    
});

require __DIR__.'/auth.php';