<?php

use App\Models\Album;
use App\Models\Photo;
use App\User;
use Illuminate\Support\Facades\DB;

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
//Route::get('/home', 'HomeController@index')->name('home');
Auth::routes();

//images
Route::get('/users', function() {
    return User::all();
});



Route::group(['middleware' => 'auth'], function() {
    Route::get('/', 'AlbumsController@index');
    Route::get('/home', 'AlbumsController@index')->name('albums');
    Route::get('/albums', 'AlbumsController@index')->name('albums');
    Route::post('/albums', 'AlbumsController@save')->name('album-save');
    Route::get('/albums/create', 'AlbumsController@create')->name('album-create');
    Route::delete('/albums/{id}', 'AlbumsController@delete')->where('id', '[0-9]+');
    Route::get('/albums/{id}', 'AlbumsController@show');
    Route::get('/albums/{id}/edit', 'AlbumsController@edit');
    Route::get('/albums/{album}/images', 'AlbumsController@getImages')->name('album.getimages')->where('album', '[0-9]+');
    Route::patch('/albums/{id}', 'AlbumsController@store');
    Route::resource('photos', 'PhotosController');

    Route::get('/photos', function() {
        return Photo::all();
    });
    Route::get('/usersnoalbums', function() {
        $usersnoalbum = DB::table('users as u')
                        ->leftJoin('albums as a', 'a.user_id', 'u.id')
                        ->select('name', 'email', 'u.id', 'album_name')
                        ->whereNull('a.album_name')->get();
        return $usersnoalbum;
    });
});

Route::get('/{name?}/{cognome?}/{age?}', 'WelcomeController@welcome')
        ->where(['name' => '[a-zA-Z]+',
            'cognome' => '[a-zA-Z]+',
            'age' => '[0-9]{0,3}'])
/*
  ->where('name','[a-zA-Z]+')
  ->where('cognome','[a-zA-Z]+') */
;
