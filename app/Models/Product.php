<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


/**
 * App\Models\Product
 *
 * @property int $id
 * @property string|null $sku
 * @property string $name
 * @property float $price
 * @property int $cate_id
 * @property string|null $img
 * @property string|null $desc
 * @property int $enable
 * @property int $feature
 * @property string|null $title
 * @property string|null $keyword
 * @property string|null $sum
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Database\Factories\ProductFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|Product newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Product newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Product query()
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereCateId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereDesc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereEnable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereFeature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereImg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereKeyword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereSku($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereSum($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property float|null $weight Trọng lượng
 * @property string|null $dimension Kích thước
 * @property string|null $color Màu sắc
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereDimension($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereWeight($value)
 */
class Product extends \Eloquent
{
    use HasFactory;
    protected $fillable = ['sku','name','price','cate_id','img','desc','enable','feature','title','keyword','sum','unit','weight','dimension'];

    public static function getTableName()
    {
        return (new self())->getTable();
    }
}
