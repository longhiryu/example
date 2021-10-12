<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Account
 *
 * @property int $id
 * @property string $name Tên tài khoản
 * @property float $value Giá trị hiện tại của tài khoản
 * @property string $type Loại tài khoản: Cash | Bank
 * @property string|null $note Ghi chú
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Account newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Account newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Account query()
 * @method static \Illuminate\Database\Eloquent\Builder|Account whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Account whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Account whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Account whereNote($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Account whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Account whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Account whereValue($value)
 * @mixin \Eloquent
 */
class Account extends \Eloquent
{
    protected $fillable = ['name','value','type','note'];
    
    public static function getTableName()
    {
        return (new self())->getTable();
    }
}
