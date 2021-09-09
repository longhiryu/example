<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Cate
 *
 * @property int $id
 * @property string $name
 * @property string $table
 * @property string|null $img
 * @property string|null $desc
 * @property int $enable
 * @property int $feature
 * @property string|null $title
 * @property string|null $keyword
 * @property string|null $sum
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Database\Factories\CateFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Cate newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Cate query()
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereDesc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereEnable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereFeature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereImg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereKeyword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereSum($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereTable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cate whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Cate extends \Eloquent
{
    use HasFactory;
    protected $fillable = ['name','table','img','desc','enable','feature','title','keyword','sum'];
}
