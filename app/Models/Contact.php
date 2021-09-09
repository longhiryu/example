<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;
    protected $fillable = ['partner_id','fullname','address','possition','tel','phone','email','note'];

    public static function getTableName()
    {
        return (new self())->getTable();
    }
}
