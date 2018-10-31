@extends("layouts.base")

@section('scripts')
 @parent
   <script src="{{ asset('media/js/order.js') }}?version={{time()}}" defer></script>

@endsection


@section("content")

<h2>Моя корзина</h2>
<form method="post" action="{{asset('order')}}">
@csrf
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

<th align="center">
<span id = "price_{{$key}}">
{{$products[$key]->price}}
</span>
</th>

<th align="center">
<input class="form-control cont" name="{{$key}}" type="number" data-id="{{$key}}" value="{{$value}}" min="0" max="100"/>
</th>

<th align="center">
<span id = "count_{{$key}}">
{{$count}}
</span>
</th>

<th align="center"><a class="btn feed btn-lg btn-danger" href="{{asset('basket/dell/'.$key)}}">X</a></th>
</tr>

@endforeach	 
<tr>
<th colspan="3">Итого</th>

<th>{{$counts}}</th>
<th>{{$itog}}</th>
<th>Купить</th>
</tr>	 
	
	
	
	
	
</table>

<div class="rb">
	<a class="btn feed btn-lg btn-default" href="{{asset('basket/clear/')}}">Очитить корзину</a>
	<a class="btn feed btn-lg btn-success" href="#">Оформить заказ</a>
	</div>


  <div class="form-row" align="left">
    <div class="form-group col-md-6">
      <label for="inputPassword4">Фамилия, Имя</label>
      <input name="fio" type="text" class="form-control" id="inputName" placeholder="Фамилия, Имя">
    </div>
	
	<div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input name="email" type="email" class="form-control" id="inputEmail4" placeholder="Email">
    </div>
    
     <div class="form-group col-md-6">
    <label for="inputAddress2">Телефон</label>
    <input name="phone" type="text" class="form-control" id="inputPhone" placeholder="Номер телефона">
  </div>
  </div>
  <div class="form-group col-md-6">
    <label for="inputAddress">Адрес</label>
    <input name="adress" type="text" class="form-control" id="inputAddress" placeholder="Улица, дом, корпус, квартира">
  </div>
 
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">Населенный пункт</label>
      <input name="city" type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">Область</label>
      <select name="oblast" id="inputState" class="form-control">
        <option selected>Минская обл.</option>
        <option>Брестская обл.</option>
		<option>Брестская обл.</option>
      </select>
    </div>
    <div class="form-group col-md-4">
      <label for="inputZip">Почтовый индекс</label>
      <input name="index" type="text" class="form-control" id="Почтовый индекс">
    </div>
   
   
  </div>
 
 <div class="rb">
<button type="submit"  class="btn btn-lg btn-success ">Подтвердить заказ</button>  
</div>
<!--
<!-- @if (isset($arr[0])){

}

@endif

-->
</form>	
	
	
	
	
@endsection


















