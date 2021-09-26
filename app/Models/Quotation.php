<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Quotation
 *
 * @property int $id
 * @property string $name Tên dự án / PO
 * @property int $contact_id Người liên hệ trong bảng Contacts
 * @property int $partner_id Đối tác bảng Partners
 * @property string $sku Mã báo giá
 * @property int $version Phiên bản báo giá
 * @property string $note
 * @property float $subTotal
 * @property float $tax
 * @property float $total
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation query()
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereContactId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereNote($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation wherePartnerId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereSku($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereSubTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereVersion($value)
 * @mixin \Eloquent
 * @property int $author User id
 * @property int $locked 1 is locked
 * @property int $approved
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereApproved($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereAuthor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereLocked($value)
 */
class Quotation extends \Eloquent
{
    use HasFactory;
    protected $fillable = ['name','author','contact_id','partner_id','sku','version','note','subTotal','tax','total','sum','approved','locked'];
    public $allias = 'Quotation';

    public static function getTableName()
    {
        return (new self())->getTable();
    }
}
