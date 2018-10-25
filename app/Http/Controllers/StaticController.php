<?php

namespace App\Http\Controllers;

use App\Maintest;

class StaticController extends Controller
{
    public function getIndex($url=null){
		$obj=Maintest::where("url",$url)->first();
		return view("static",compact("obj"));
				
	}
	
	
	
	
	
}
