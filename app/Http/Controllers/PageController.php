<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{
	protected $dati = [
		[
			'nome' 	=> 'gmk',
			'cognome' => 'genovese'
		],
		[
			'nome' 	=> 'cicip',
			'cognome' => 'ciciap'
		],
		[
			'nome' 	=> 'gustavo',
			'cognome' => 'dandolo'
		]
	];
	
	public function staff(){
		
		/*
		//metodo 1
		return view('staff',array('titolo' => 'il nostro staff', 'staff' => $this->dati));
		//metodo 2
		return view('staff')
			->with('staff',$this->dati)
			->with('titolo','kitammurt');
		
		//metodo 3
		return view('staff')->withStaff($this->dati)->withTitolo('ktm');
		
		//metodo 4
		
		*/
		$staff = $this->dati;
		$titolo = "altro metodo 4";
		return view('staffb', compact('titolo', 'staff'));
	}
	public function about(){
		return view('about');
	}
	public function blog(){
		return view('blog');
	}
}
