<h2>{{$obj->name}}</h2>

<p>{!!$obj->body!!}</p>


@if($obj->picture)
<img class="product" id="{{$obj->id}}" src="{{asset('uploads/thumb/'.$obj->picture)}}"/>
@else 
<img class="product" id="{{$obj->id}}" src="{{asset('media/img/no.png')}}"/>	
@endif