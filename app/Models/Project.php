<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Project
 *
 * @property int $id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $name
 * @property int|null $contact_id
 * @property int|null $partner_id
 * @property int|null $quotation_id
 * @property string|null $location
 * @property string|null $note
 * @property float $subTotal
 * @property float $tax
 * @property float $total
 * @method static \Illuminate\Database\Eloquent\Builder|Project newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Project newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Project query()
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereContactId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereLocation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereNote($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project wherePartnerId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereQuotationId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereSubTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Project whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Project extends \Eloquent
{
    protected $fillable = ['name','contact_id','partner_id','quotation_id','location','note','subTotal','tax','total'];

    public static function getTableName()
    {
        return (new self())->getTable();
    }
}
