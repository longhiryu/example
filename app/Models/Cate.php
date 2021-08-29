<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cate extends \Eloquent
{
    use HasFactory;
    protected $fillable = ['name','table','img','desc','enable','feature','title','keyword','sum'];
}
