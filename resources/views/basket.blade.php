@extends("layouts.base")
@section("content")

<h2>Моя корзина</h2>

<table class="table table-bordered table-striped" style="100%" align="center">
<tr>
<th>Изображение</th>
<th>Название</th>
<th>Цена,руб.</th>
<th>Количество</th>
<th>Сумма</th>
<th>Удалить</th>
</tr>	
@php
$counts=0;
$itog=0;
@endphp

@foreach($arr as $key=>$value)
@php
$count=$value*$products[$key]->price;
$counts+=$value;
$itog+=$count;
@endphp
<tr>

<th>
<figure class="">
    <img class="img" src="{{asset('uploads/thumb/'.$products[$key]->picture)}}">
    <figcaption></figcaption>
</figure>
</th>

<th align="center">{{$products[$key]->name}}</th>
<th align="center">{{$products[$key]->price}}</th>
<th align="center">{{$value}}</th>
<th align="center">{{$count}}</th>
<th align="center"><a href="{{asset('basket/dell/'.$key)}}">X</a></th>
</tr>
@endforeach	 
<tr>
<th colspan="3">Итого</th>

<th>{{$counts}}</th>
<th>{{$itog}}</th>
<th>Купить</th>
</tr>	 
	
	
	
	
	
</table>


	<a href="{{asset('basket/clear/')}}">Очитить корзину</a>
@endsection