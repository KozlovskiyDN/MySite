<?php

namespace App\Http\Controllers;

use App\Http\Requests\OrderRequest;
use Illuminate\Http\Request;
use App\Order;
use Auth;
//1вариант// use App\Libs\Cookie;

class OrderController extends Controller
{
    public function postOrder(OrderRequest $r){
		$all = [];
		foreach($_POST as $key =>$value){
			$id = (int)$key;
			if($id>0){
				$all[$id] = $value;
			}
			
		}		
	$body = serialize($all);
$r['user_id']=(Auth::guest())?0:Auth::user()->id;
$r['body'] = $body;
Order::create($r->all());

//2вариант// foreach($_COOKIE as $key => $value) {
//2вариант// 	$id = (int)$key;
//2вариант// 	if($id>0){
//2вариант// 		setcookie($id,'',time()-1,'/');
//2вариант// 	}
	
//2вариант// }

//1вариант// $cook = new Cookie;
//1вариант// $cook -> deleteAll();

//3вариант-предпочтительный// 
  \App::make('\App\Libs\Cookie')->deleteAll();
//3вариант-предпочтительный// 

return redirect()->back();




	
	}
}
