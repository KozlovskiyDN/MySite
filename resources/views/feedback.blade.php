@extends("layouts.main")
@section("content")

<h2>Отзывы</h2>

@foreach($feeds as $one)
<div class="com bg-info feed">
{!!$one->body!!}
<div class="time bg-primary">
{{$one->created_at}}

</div>
</div>	


@endforeach

@endsection