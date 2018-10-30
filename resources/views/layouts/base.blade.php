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
     <script src="{{ asset('js/app.js') }}" defer></script>
@show
</head>
<body>
@include('template.header')


@include('template.topmenu')


<div >
<div >
<div class="col-md-2 moy1">


@foreach($v_catalogs as $one)
<a href="{{asset('catalog/'.$one->id)}}"
class="btn btn-primary btn-block">
{{$one->name}}
</a>

@endforeach
<a href="{{asset('feedback')}}" class="btn btn-primary btn-block">Отзывы</a>
</div>

<article class="col-md-8 moy">

@yield("content")


</article>
<aside class="col-md-2 moy">Vidget
<a class="btn feed btn-block btn-lg btn-warning" href="{{asset('basket')}}">Моя корзина ({{$cookie_count}})</a>	
@include('template.leftmenu')


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








