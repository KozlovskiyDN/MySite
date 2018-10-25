<?php

namespace App\Http\Controllers;

use App\Feedback;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }
	
	
  public function postIndex()
    {
/* 		
Показывает запрос
       dd($_POST);
*/ 
	   $body=$_POST['otzuv'];
	   $ocenka=$_POST['optionsRadios'];
	   $obj=new Feedback;
	   $obj->body=$body;
	   $obj->user_id=Auth::user()->id;
	   $obj->ball=$ocenka;
	   $obj->save();
	   return redirect('/home');
    }	
	
	
	
}
