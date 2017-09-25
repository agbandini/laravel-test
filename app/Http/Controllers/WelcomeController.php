<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function welcome($name = '', $cognome = '', $age = '', Request $req){
		$language = $req->input('lingua');
		$res = "<h1>Testo welcome controller ".$name."</h1>".$cognome.$age." in get:".$language;
		return $res;
	}
}
