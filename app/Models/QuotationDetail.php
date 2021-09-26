<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\QuotationDetail
 *
 * @property int $id
 * @property string|null $sku
 * @property int $quotation_id
 * @property string|null $dimension
 * @property string|null $img
 * @property int $product_id
 * @property string|null $desc
 * @property string $name Tên thành phần được báo giá
 * @property float $quantity số lượng
 * @property float $price
 * @property string|null $unit
 * @property float $lineTotal
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail query()
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereDesc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereDimension($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereImg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereLineTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereQuotationId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereSku($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationDetail whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class QuotationDetail extends Model
{
    protected $table = 'quotation_details';
    protected $fillable = ['quotation_id','sku','dimension','img','product_id','desc','name','quantity','price','unit','lineTotal'];

    public static function getTableName()
    {
        return (new self())->getTable();
    }
}
