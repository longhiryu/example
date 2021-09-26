<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Partner
 *
 * @property int $id
 * @property int|null $cate_id
 * @property string $sku
 * @property string|null $type
 * @property string|null $companyName
 * @property string|null $shortName
 * @property string|null $representativeName
 * @property string|null $taxCode
 * @property string|null $address
 * @property string|null $phone
 * @property string|null $email
 * @property string|null $accountNumber
 * @property string|null $bankName
 * @property string|null $note
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Partner newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Partner newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Partner query()
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereAccountNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereBankName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereCateId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereCompanyName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereNote($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereRepresentativeName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereSku($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereTaxCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Partner whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Partner extends \Eloquent
{
    use HasFactory;
    protected $fillable = ['cate_id','sku','type','companyName','shortName','representativeName','taxCode','address','phone','email','accountNumber','bankName','note'];

    public static function getTableName()
    {
        return (new self())->getTable();
    }
}
