<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\adminController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\guruController;
use App\Http\Controllers\kelasController;

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
    return view('layout/template');
});

Route::get('/dashboard', [Controller::class, 'dashboard'])->name('dashboard');

Route::get('/admin', [adminController::class, 'index'])->name('admin');
Route::get('/admin/addform', [adminController::class, 'add'])->name('addAdmin');
Route::post('/admin/addform', [adminController::class, 'insertdata'])->name('insertAdmin');
Route::get('/admin/updateform/{id}', [adminController::class, 'readdata'])->name('readAdmin');
Route::post('/admin/updateform/{id}', [adminController::class, 'updatedata'])->name('updateAdmin');
Route::get('/admin/{id}', [adminController::class, 'deletedata'])->name('deleteAdmin');
Route::get('/pdf-admin', [adminController::class, 'exportpdf'])->name('pdfAdmin');

Route::get('/guru', [guruController::class, 'index'])->name('guru');
Route::get('/guru/addform', [guruController::class, 'add'])->name('addguru');
Route::post('/guru/addform', [guruController::class, 'insertdata'])->name('insertguru');
Route::get('/guru/updateform/{id}', [guruController::class, 'readdata'])->name('readguru');
Route::post('/guru/updateform/{id}', [guruController::class, 'updatedata'])->name('updateguru');
Route::get('/guru/{id}', [guruController::class, 'deletedata'])->name('deleteguru');
Route::get('/pdf-guru', [guruController::class, 'exportpdf'])->name('pdfguru');

Route::get('/kelas', [kelasController::class, 'index'])->name('kelas');
Route::get('/kelas/addform', [kelasController::class, 'add'])->name('addkelas');
Route::post('/kelas/addform', [kelasController::class, 'insertdata'])->name('insertkelas');
Route::get('/kelas/updateform/{id}', [kelasController::class, 'readdata'])->name('readkelas');
Route::post('/kelas/updateform/{id}', [kelasController::class, 'updatedata'])->name('updatekelas');
Route::get('/kelas/{id}', [kelasController::class, 'deletedata'])->name('deletekelas');
Route::get('/pdf-kelas', [kelasController::class, 'exportpdf'])->name('pdfkelas');

