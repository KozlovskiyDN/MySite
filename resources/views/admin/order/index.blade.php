@extends('admin.layouts.master')

@section('content')

    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">{{ trans('quickadmin::templates.templates-customView_index-list') }}</div>
        </div>
        <div class="portlet-body">
		
<table width="100%" class="table table-bordered table-striped"> 
<tr>
<th>ФИО</th>
<th>ЕМАИЛ</th>
<th>ТЕЛЕФОН</th>
<th>АДРЕС</th>
<th>СТАТУС</th>
<th>ЗАКАЗ</th>
<th>ID</th>
</tr>		
		
		
@foreach($all as $one)        

<th>{{$one->fio}}</th>
<th>{{$one->email}}</th>
<th>{{$one->phone}}</th>
<th>{{$one->adress}}</th>
<th>{{$one->status}}</th>
<th>

<a href="{{asset('admin/order/one/'.$one->id)}}"
<span>{{count(unserialize($one->body))}}</span>
</a>

</th>
<th>{{$one->id}}</th>
</tr>					
			
			
			
			
@endforeach	
		
</table>
{!!$all->links()!!}		
        </div>
	</div>

@endsection