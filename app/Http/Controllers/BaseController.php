<?php

namespace App\Http\Controllers;

use App\Maintest;

class BaseController extends Controller
{
    public function getIndex() {
		$obj=Maintest::where("url","index")->first();
		return view("static",compact("obj"));
	}
}
