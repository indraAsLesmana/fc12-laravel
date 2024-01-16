<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\CategoryController;

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