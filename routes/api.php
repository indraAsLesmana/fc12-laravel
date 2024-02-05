<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\AddressController;
use App\Http\Controllers\Api\OrderController;
use App\Http\Controllers\Api\CallbackController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// register
Route::post('/register', [AuthController::class, 'store']);

// logout
Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');

//login
Route::post('/login', [AuthController::class, 'login']);

//categories
Route::get('/categories', [CategoryController::class, 'index']);

//Product
Route::get('/products', [ProductController::class, 'index']);

//Product sync
// Route::get('/sync', [ProductController::class, 'sync']);

//address
Route::get('/address', [AddressController::class, 'index'])->middleware('auth:sanctum');

//post address
Route::post('/address', [AddressController::class, 'store'])->middleware('auth:sanctum');

//order
Route::post('/order', [OrderController::class, 'order'])->middleware('auth:sanctum');

//callback
Route::post('/callback', [CallbackController::class, 'callback']);

//getOrder
Route::get('/order/{id}', [OrderController::class, 'getOrder'])->middleware('auth:sanctum');

//getAllUserOrder
Route::get('/orders', [OrderController::class, 'getOrders'])->middleware('auth:sanctum');

//update fcm_id
Route::post('/update-fcmid', [AuthController::class, 'updateFcmId'])->middleware('auth:sanctum');