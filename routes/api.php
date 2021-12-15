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

Route::middleware('guest:api')->group(function () {

    Route::prefix('customer')->group(function () {
        Route::middleware('guest:api')->post('/login', [App\Http\Controllers\Api\Customer\CustomerController::class, 'login']);
    });
    Route::apiResource('customer', App\Http\Controllers\Api\Customer\CustomerController::class);

    Route::apiResource('service', \App\Http\Controllers\Api\Service\ServiceController::class);



});

Route::middleware('auth:sanctum')->group(function () {

    Route::get('/service/{service}/customer/{customer}/booking', [\App\Http\Controllers\Api\BookingController::class, 'customer']);
    Route::apiResource('service.booking', \App\Http\Controllers\Api\BookingController::class)->shallow();
});
