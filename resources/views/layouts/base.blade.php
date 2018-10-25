<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="utf-8"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<meta name="author" content="KozlovskiyDN"/>
<title>Site Name</title>
<link type="text/css" rel="stylesheet" href="{{ asset('/media/css/bootstrap.min.css')}}"/>
<link type="text/css" rel="stylesheet" href="{{ asset('/media/css/style.css')}}"/>
@section('styles')
@show
@section('scripts')
@show
</head>
<body>
<header id="header">

    <div id="app" class="moy2">
                        @guest
                            
                                <a class="nav-link " href="{{ route('login') }}">{{ __('Login') }}  |</a>
 
                                @if (Route::has('register'))
                                    <a class="nav-link "  href="{{ route('register') }}">{{ __('Register') }}</a>
                                @endif
                           
                        @else
                                <a class="nav-link " href="{{ asset('home') }}" >
                                    {{ Auth::user()->name }}   |
                                </a>
                                <a class="nav-link "  href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>


                        @endguest
    </div>







<h1 id="logotxt">Site Name</h1>

<figure>
<img id="logo" src="{{ asset('/media/img/logo.png')}}"/>
<figcaption>Logo site</figcaption>
</figure>



</header>
<nav class="topmenu">
<a href="/">Главная</a>
<a href="about">О компании</a>
<a href="servis">Услуги</a>
<a href="#">Товары</a>
<a href="contact">Контакты</a>

</nav>
<div >
<div >
<div class="col-md-2 moy1">
<a href="#" class="btn btn-primary btn-block">Punkt menu 1</a>
<a href="#" class="btn btn-primary btn-block">Punkt menu 2</a>
<a href="#" class="btn btn-primary btn-block">Punkt menu 3</a>
<a href="#" class="btn btn-primary btn-block">Punkt menu 4</a>
<a href="#" class="btn btn-primary btn-block">Punkt menu 5</a>
<a href="#" class="btn btn-primary btn-block">Punkt menu 6</a>
<a href="#" class="btn btn-primary btn-block">Punkt menu 7</a>
<a href="feedback" class="btn btn-primary btn-block">Отзывы</a>
</div>
<article class="col-md-8 moy">

@yield("content")


</article>
<aside class="col-md-2 moy">Vidget

<table width="100%" height="180" style="  font-family:Tahoma; font-size:12px; color:#000000;" cellpadding="2" cellspacing="0">
<tr><td><a href="http://6.pogoda.by/26850" style="font-family:Tahoma; font-size:12px; color:#003399;" title="Погода Минск на 6 дней - Гидрометцентр РБ" target="_blank">Погода Минск</a>
</td></tr>
<tr><td>

<table width=100% height=100% style=" font-family:Tahoma; font-size:12px; color:#000000;" cellpadding="0" cellspacing="0">
<tr><td>
<script type="text/javascript" charset="windows-1251" src="http://pogoda.by/meteoinformer/js/26850_1.js"></script>
</td></tr>
</table>

</td></tr>

<tr><td align="right">Информация сайта <a href="http://www.pogoda.by" target="_blank" style="font-family:Tahoma; font-size:12px; color:#003399;">pogoda.by</a>
</td></tr>
</table>



</aside>
</div>


</div>

<br style="clear:both"/>
<footer class="footer">
2018 &copy; KozlovskiyDN
</footer>
</body>
</html>

<!-- 
<div> Zamenit</div>
<article>Statby</article>
<aside>fragment</aside>
<figure>
<img src="">
<figcaption>opisanie</figcaption>
</figure>
<footer></footer>
<header></header>
<hgroup></hgroup>
<nav></nav>
<section></section>
<span>strochnue</span>
<time></time>
<output></output>
<mark></mark>
<address></address>
<div role="baner"></div>

microdata - schema.org - standart!!!

registraciya
 -->








