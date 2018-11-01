@extends('admin.layouts.master')

@section('content')

    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">{{ trans('quickadmin::templates.templates-customView_index-list') }}</div>
        </div>
        <div class="portlet-body">
		
<table width="100%" class="table table-bordered table-striped"> 
<tr>
<th>Наименование</th>
<th>Описание</th>
<th>Цена</th>
<th>Количество</th>
<th>Сумма</th>
</tr>		

     
<tr>
@php
$arr=unserialize($obj->body);
@endphp
@foreach($arr as $key=>$value)
<th>{{$key}}</th>
<th>#</th>
<th>#</th>
<th>{{$value}}</th>
<th>#</th>
</tr>					
@endforeach				

		
</table>



        </div>
	</div>

@endsection