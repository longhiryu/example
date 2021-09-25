<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    protected $fillable = ['name','value','type','note'];
    
    public static function getTableName()
    {
        return (new self())->getTable();
    }
}
