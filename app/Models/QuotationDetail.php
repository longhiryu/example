<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuotationDetail extends Model
{
    protected $table = 'quotation_details';
    protected $fillable = ['quotation_id','dimension','img','product_id','desc','name','quantity','price','unit','lineTotal'];

    public static function getTableName()
    {
        return (new self())->getTable();
    }
}
