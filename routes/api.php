<?php

use Illuminate\Http\Request;
use App\Http\Controllers\API\TaskController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ApiAuthController;
use App\Http\Controllers\API\ProductController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
*/
Route::post('register', [ApiAuthController::class, 'register']);
Route::post('login', [ApiAuthController::class, 'login']);



Route::middleware('auth:api')->group( function () {
    Route::get('/dashboard', function () {
        return view('welcome');
    });
    Route::get('tasks', [TaskController::class, 'index']);
    Route::post('task', [TaskController::class, 'store']);
    Route::put('task/{id}', [TaskController::class, 'update']);
    Route::delete('task/{id}', [TaskController::class, 'delete']);
    Route::get('logout', [ApiAuthController::class, 'logout']);
});

