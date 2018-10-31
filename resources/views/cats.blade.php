@extends("layouts.base")
@section("content")
@section('scripts')
 @parent
   <script src="{{ asset('media/js/my.js') }}?version=7" defer></script>

@endsection
<h2>Категории</h2>

@foreach ($cats as $cat)
<div class="panel panel-info link" data-id="{{$cat->id}}">
<div class="panel-heading">
<h2 class="panel-title">{{$cat->name}}</h2>
</div>
<div class="panel-body">
{!!$cat->body!!}
</div>
</div>

<div class="panel panel-info showhide" id="data{{$cat->id}}">
@foreach ($cat->products()->get() as $one)
</hr>
<div class="panel-heading">
@if($one->picture)
<img class="product" src="{{asset('uploads/thumb/'.$one->picture)}}"/>
@else 
<img class="product" src="{{asset('media/img/no.png')}}"/>	
@endif
<h3 class="panel-title">
<a href="{{asset('product/'.$one->id)}}" class="product_link">
{{$one->name}}
</a>
</h3>
</div>
<div class="panel-body">
{!!$one->body!!}
<a class="btn feed btn-lg btn-success" href="{{asset('basket/add/'.$one->id)}}"> Положить в корзину </a>
</div>

@endforeach
</div>

@endforeach


@endsection