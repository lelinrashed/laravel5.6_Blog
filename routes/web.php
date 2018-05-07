<?php

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

// For laravel default page
//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', 'FrontEndController@index')->name('index');
Route::get('/post/{slug}', 'FrontEndController@singlePost')->name('post.single');
Route::get('/category/{id}', 'FrontEndController@category')->name('category.single');
Route::get('/tag/{id}', 'FrontEndController@tag')->name('tag.single');

// For searching
Route::get('/results', function() {
    $posts = \App\Post::where('title', 'like', '%' . request('query') . '%')->get();

    return view('results')->with('posts', $posts)
        ->with('title', 'Search results : ' . request('query'))
        ->with('settings', \App\Setting::first())
        ->with('categories', \App\Category::take(5)->get())
        ->with('query', request('query'));
});

// For mail sending
Route::post('/subscribe', function (){
    $email = request('email');

    Newsletter::subscribe($email);

    return redirect()->back();
});


// For laravel default authentication
Auth::routes();



Route::group(['prefix'=>'admin', 'middleware'=>'auth'], function (){

    Route::get('/dashbord', 'HomeController@index')->name('home');


    Route::get('/users', 'UsersController@index')->name('users');
    Route::get('/user/create', 'UsersController@create')->name('user.create');
    Route::post('/user/store', 'UsersController@store')->name('user.store');
    Route::get('/user/admin/{id}', 'UsersController@admin')->name('user.admin');
    Route::get('/user/not-admin/{id}', 'UsersController@not_admin')->name('user.not-admin');


    Route::get('/user/profile', 'ProfilesController@index')->name('user.profile');
    Route::post('/user/profile/update', 'ProfilesController@update')->name('user.profile.update');
    Route::get('/user/delete/{id}', 'UsersController@destroy')->name('user.delete');


    Route::get('/settings', 'SettingsContrller@index')->name('settings');
    Route::post('/settings/update', 'SettingsContrller@update')->name('settings.update');


    Route::get('/categories', 'CategoriesController@index')->name('categories');
    Route::get('/category/create', 'CategoriesController@create')->name('category.create');
    Route::post('/category/store', 'CategoriesController@store')->name('category.store');
    Route::get('/category/edit/{id}', 'CategoriesController@edit')->name('category.edit');
    Route::post('/category/update/{id}', 'CategoriesController@update')->name('category.update');
    Route::get('/category/delete/{id}', 'CategoriesController@destroy')->name('category.delete');


    Route::get('/posts', 'PostController@index')->name('posts');
    Route::get('/post/create', 'PostController@create')->name('post.create');
    Route::post('/post/store', 'PostController@store')->name('post.store');
    Route::get('/post/delete/{id}', 'PostController@destroy')->name('post.delete');
    Route::get('/posts/trashed', 'PostController@trashed')->name('posts.trashed');
    Route::get('/post/kill/{id}', 'PostController@kill')->name('post.kill');
    Route::get('/post/restore/{id}', 'PostController@restore')->name('post.restore');
    Route::get('/post/edit/{id}', 'PostController@edit')->name('post.edit');
    Route::post('/post/update/{id}', 'PostController@update')->name('post.update');



    Route::get('/tags', 'TagsController@index')->name('tags');
    Route::get('/tag/create', 'TagsController@create')->name('tag.create');
    Route::post('/tag/store', 'TagsController@store')->name('tag.store');
    Route::get('/tag/edit/{id}', 'TagsController@edit')->name('tag.edit');
    Route::post('/tag/update/{id}', 'TagsController@update')->name('tag.update');
    Route::get('/tag/delete/{id}', 'TagsController@destroy')->name('tag.delete');

});

/**
 * This is test route
 */

//Route::get('/test', function (){
//    return App\User::find(1)->profile;
//});Route::get('/test', function (){
//    return App\User::find(1)->profile;
//});