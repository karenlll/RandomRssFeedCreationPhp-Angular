<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
})->middleware('cors');;


Route::post('registerUser', 'UserController@subscribe')->middleware('cors');

Route::post('unsubscribeUser', 'UserController@unsubscribe')->middleware('cors');

Route::get('manageTopics', 'TopicController@show')->middleware('cors');

Route::get('test', 'FeedRssController@testRssFeeds')->middleware('cors');

Route::get('getFeeds', 'FeedRssController@getLastFeeds')->middleware('cors');
