<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable =[
	
	'body',
	'email',
	'phone',
	'adress',
	'type',
	'fio',
	'comment',
	'user_id',
	'status'
	
	];
	
	
}
