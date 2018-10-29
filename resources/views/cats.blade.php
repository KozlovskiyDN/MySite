@extends("layouts.base")
@section("content")
@section('scripts')
 @parent
     <script src="{{ asset('media/js/my.js') }}" defer></script>
@endsection
<h2>Категории</h2>

@foreach ($cats as $cat)
<div class="link" data-id="{{$cat->id}}">
<h2>{{$cat->name}}</h2>
<div>
{!!$cat->body!!}
</div>
</div>
<div class="showhide" id="data{{$cat->id}}">
@foreach ($cat->products()->get() as $one)
</hr>
@if($one->picture)
<img src="{{asset('uploads/thumb/'.$one->picture)}}"/>
@else 
<img class="product" src="{{asset('media/img/no.png')}}"/>	
@endif
<h3>
<a href="{{asset('product/'.$one->id)}}" class="product_link">
{{$one->name}}
</a>
</h3>
{!!$one->body!!}


@endforeach
</div>

@endforeach


@endsection