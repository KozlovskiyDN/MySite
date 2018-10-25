<?php

namespace App\Http\Controllers;

use App\FeedBack;

class FeedbackController extends Controller
{
    public function getIndex(){
		$feeds=FeedBack::where("showhide",'show')->orderBy('id','DESC')->paginate(20);
		return view("feedback",compact("feeds"));
				
	}
}
