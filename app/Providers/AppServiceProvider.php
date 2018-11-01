<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Order;
use Auth;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
     Order::created(function($obj){
		if($obj->email){
			$user_email=$obj->email;
			$name = $obj->fio;
		}elseif(Auth::user()){
			$user_email=Auth::user()->email;
			$name = Auth::user()->fio;
		}
		$thema="Уважаемый $name Вам сообщение с сайта ".env('APP_NAME');
		$thema2="Уважаемый на сайте ".env('APP_NAME')." совершена покупка";
		$body ='<h1>Текст письма. Telo pisbma.</h1>';
		$body2 ='<h1>Текст письма администратора. Telo pisbma.</h1>';
		$header = 'MIME-Version:1.0'."\r\n";
		$header .= 'Content-type:text/html; charset=UTF-8'."\r\n";
		$header .= 'From:'.env('MAIL_FROM_ADRESS')."\r\n";
		
		
@mail($user_email,$thema,$body,$header);		
@mail(env('MAIL_FROM_ADRESS'),$thema2,$body2,$header);	
		
		
		
	 });   
		
		
		
		
		
		
		
		
		
		
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
