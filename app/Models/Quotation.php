<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Yajra\DataTables\Facades\DataTables;

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
    protected $fillable = ['type','name','author','contact_id','partner_id','sku','version','note','subTotal','tax','total','sum','approved','locked'];
    public $allias = 'Quotation';

    public static function getTableName()
    {
        return (new self())->getTable();
    }

    public function getQuotationList(){
        $quo = Quotation::select('*')->orderBy('created_at','desc')->get();
        return DataTables::of($quo)
        ->editColumn('created_at', function ($quo) {
            $result = date("d-m-Y",strtotime($quo->created_at));
            return $result;
        })
        ->editColumn('contact_id', function ($quo) {
            $contact = Contact::find($quo->contact_id);
            $result = $contact->fullname;
            return $result;
        })
        ->editColumn('partner_id', function ($quo) {
            $partner = Partner::find($quo->partner_id);
            $result = $partner->shortName;
            return $result;
        })
        ->editColumn('project_id', function ($quo) {
            $project = Project::find($quo->project_id);
            $result = $project->name;
            return $result;
        })
        ->editColumn('total', function ($quo) {
            return number_format($quo->total,0,',','.');
        })
        ->editColumn('type', function ($quo) {
            $result = ($quo->type == 'in')? 'Đầu vào':'Đầu ra';
            return $result;

        })
        ->addColumn('action', function ($quo) {
            $editButton = '<a class="btn btn-info btn-sm text-white" href="'.route('quotations.edit',$quo->id).'" role="button">Edit</a>';
            //$deleteButton = '<button name="delete" type="button" class="btn btn-light btn-sm" data-id="'.$quo->id.'" data-link="'.route('quotations.destroy',$quo->id).'">Delete</button>';
            $viewButton = '<button data-link="'.route('quotations.show',$quo->id).'" type="button" class="btn btn-primary btn-sm quickview" data-toggle="modal" data-target="#quickview">View</button>';
            $approved = ($quo->approved != 0)? '<span class="text-success approved"><i class="fas fa-clipboard-check fa-lg"></i></span>' : '<span class="text-secondary pending-approve"><i class="fas fa-clipboard fa-lg"></i></span>';
            $locked = ($quo->locked == 0)? '<span class="text-success approved"><i class="fas fa-unlock-alt fa-lg"></i></span>' : '<span class="text-danger pending-approve"><i class="fas fa-lock fa-lg"></i></span>';
              
            return $viewButton.' '.$editButton.' '.$approved.' '.$locked;
        })
        ->rawColumns(['action','enable','cate_id','partner_id','project_id','total','type'])
        ->make(true);
    }
}
