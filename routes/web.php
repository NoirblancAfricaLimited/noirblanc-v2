<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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


Auth::routes();

//Route::middleware(['guest'])->group(function () {
//});

Route::middleware(['auth'])->group(function () {
//    Route::get('/', \App\Http\Livewire\Business\BusinessIndex::class)->name('home');

    Route::get('/admin', \App\Http\Livewire\Admin\AdminIndex::class)->name('admin.index');
    Route::get('/admin/create', \App\Http\Livewire\Admin\AdminAdd::class)->name('admin.create');

    Route::get('/admin/{admin}/edit', \App\Http\Livewire\Admin\AdminEdit::class)->name('admin.edit');

    //Providers
    Route::get('/provider', \App\Http\Livewire\Providers\ProviderIndex::class)->name('provider.index');

    //Businesses
    Route::get('/business', \App\Http\Livewire\Business\BusinessIndex::class)->name('business.index');
    Route::get('/business/add', \App\Http\Livewire\Business\BusinessAdd::class)->name('business.create');
    Route::get('/business/{business}/edit', \App\Http\Livewire\Business\BusinessEdit::class)->name('business.edit');
    Route::get('/business/{business}/show', \App\Http\Livewire\Business\BusinessShow::class)->name('business.show');
    Route::get('/business/{business}/service', \App\Http\Livewire\Service\ServiceIndex::class)->name('business.service.index');
    Route::get('/business/service/{service}/show', \App\Http\Livewire\Service\ServiceShow::class)->name('business.service.show');

    Route::get('/category', \App\Http\Livewire\Category\CategoryIndex::class)->name('category.index');
    Route::get('/category/{category}/edit', \App\Http\Livewire\Category\CategoryEdit::class)->name('category.edit');
    Route::get('/category/create', \App\Http\Livewire\Category\CategoryAdd::class)->name('category.create');
});

    Route::get('/join', \App\Http\Livewire\Business\BusinessJoin::class)->name('business.join');
    Route::get('/', \App\Http\Livewire\Front\Home::class)->name('home');
    Route::get('/service/browse', \App\Http\Livewire\Front\ServiceBrowse::class)->name('service.browse');
    Route::get('/service/{service}/details', \App\Http\Livewire\Front\ServiceDetails::class)->name('service.details');
    Route::get('/service/{service}/book', \App\Http\Livewire\Front\ServiceBooking::class)->name('service.book');
