@extends("layouts.base")
@section("content")

<h2>{{$obj->name}}</h2>

	
	<figure class="caption-shadow">
    <img class="N_img" src="{{asset('uploads/thumb/'.$obj->picture)}}">
    <figcaption>
	{{$obj->name}}
	
	</figcaption>
</figure>
	
	
	
	<p>{!!$obj->body!!}</p>


	
@endsection