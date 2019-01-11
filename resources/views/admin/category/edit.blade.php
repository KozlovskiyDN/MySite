@extends('admin.layouts.master')

@section('scripts')
@parent
<script src="{{asset ('js/parse.js')}}"></script>
@endsection

@section('content')


<div class="row">
    <div class="col-sm-10 col-sm-offset-2">
        <h1>{{ trans('quickadmin::templates.templates-view_edit-edit') }}</h1>

        @if ($errors->any())
        	<div class="alert alert-danger">
        	    <ul>
                    {!! implode('', $errors->all('<li class="error">:message</li>')) !!}
                </ul>
        	</div>
        @endif
    </div>
</div>

{!! Form::model($category, array('class' => 'form-horizontal', 'id' => 'form-with-validation', 'method' => 'PATCH', 'route' => array(config('quickadmin.route').'.category.update', $category->id))) !!}

<div class="form-group">
    {!! Form::label('name', 'name*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('name', old('name',$category->name), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('body', 'body', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::textarea('body', old('body',$category->body), array('class'=>'form-control ckeditor')) !!}
        
    </div>
</div>

<div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      {!! Form::submit(trans('quickadmin::templates.templates-view_edit-update'), array('class' => 'btn btn-primary')) !!}
      {!! link_to_route(config('quickadmin.route').'.category.index', trans('quickadmin::templates.templates-view_edit-cancel'), null, array('class' => 'btn btn-default')) !!}
    </div>
</div>

{!! Form::close() !!}
<div style="width:100%; height:5px; margin:10px;" class="bg-primary"></div>
<h1 style="margin-left:10px;">Спарсить информацию с ресурса Aliexpress</h1>
<p style="margin-left:10px;">Вставте ссылку на интересующий католог и нажмите кнопку "Спарсить"</p>
<div style="width:100%; height:5px; margin:10px;" class="bg-primary"></div>
<form>
<input type="text" class="form-control" id="parse_aliexpress"  placeholder="Enter URL">
<button type="button" class="parse btn btn-primary" value="Parse from Aliexpress" data-id="{{$category->id}}">спарсить</button>
</form>
<div style="width:100%; height:5px; margin:10px;" class="bg-primary"></div>
<div id="empty"></div>
<div style="width:100%; height:5px; margin:10px;" class="bg-primary"></div>



@endsection