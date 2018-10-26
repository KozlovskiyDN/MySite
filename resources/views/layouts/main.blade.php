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
@include('template.header')


@include('template.topmenu')


<div >
<div >


<article class="col-md-12 moy">

@yield("content")


</article>

</div>


</div>

<br style="clear:both"/>
<footer class="footer">
2018 &copy; KozlovskiyDN
</footer>
</body>
</html>









