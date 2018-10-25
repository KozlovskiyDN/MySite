@extends('layouts.base')
@section('scripts')
@parent
<script src="{{asset ('media/ckeditor/ckeditor.js')}}"></script>
@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Личный кабинет</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
<br>
                <form  method="post" action="{{asset('home')}}">
					{!!csrf_field()!!}
<div class="form-group">
<label for="exampleInputEmail1">Оставте отзыв</label>
<textarea  class="ckeditor form-control " rows="3" name="otzuv"></textarea>
</div>

<label for="exampleInputEmail1">Оцените сайт</label>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios1" value="1" checked>
    1
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="2">
    2
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios3" value="3" >
    3
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios4" value="4" >
    4
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios5" value="5" >
    5
  </label>
</div>



<button type="submit" class="btn btn-default">Отправить</button>
</form>    
					
					
					
					
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
