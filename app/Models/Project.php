<?php

namespace App\Models;

use App\Http\Controllers\QuotationController;
use Yajra\DataTables\Facades\DataTables;
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
    protected $fillable = ['name','run','contact_id','partner_id','quotation_id','location','note','subTotal','tax','total'];

    public static function getTableName()
    {
        return (new self())->getTable();
    }

    public function getProjectList(){
        $quotation = new QuotationController();

        $project = Project::all();
        return DataTables::of($project)
        ->editColumn('contact_id', function ($project) {
            $contact = Contact::find($project->contact_id);
            return $contact->fullname;
        })
        ->editColumn('partner_id', function ($project) {
            $partner = Partner::find($project->partner_id);
            return $partner->companyName;
        })
        ->editColumn('run', function ($project) {
            if ($project->run == 1) {
                $result = '<span class="badge badge-pill badge-success">running</span>';
            }else{
                $result = '<span class="badge badge-pill badge-secondary">pending</span>';
            }
            return $result;
        })
        ->addColumn('tax', function ($project) {
            $data = Quotation::select('subTotal','tax')->where('project_id',$project->id)->where('partner_id',$project->partner_id)->get();
            $tax = 0;
            foreach ($data as $value) {
                $tax += $value->subTotal * $value->tax / 100;
            }
            return number_format($tax,0,',','.');
        })
        ->addColumn('total', function ($project) {
            $data = Quotation::select('total')->where('project_id',$project->id)->where('partner_id',$project->partner_id)->get();
            $total = 0;
            foreach ($data as $value) {
                $total += $value->total;
            }
            return number_format($total,0,',','.');
        })
        ->addColumn('action', function ($project) {
            $editButton = '<a class="btn btn-info btn-sm text-white" href="'.route('projects.edit',$project->id).'" role="button">Edit</a>';
            return $editButton;
        })
        ->rawColumns(['action','contact_id','partner_id','run','tax','total'])
        ->make(true);
    }
}
