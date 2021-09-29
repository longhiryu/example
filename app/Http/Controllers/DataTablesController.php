<?php

namespace App\Http\Controllers;

use App\Models\Account;
use App\Models\Cate;
use App\Models\Contact;
use App\Models\Partner;
use App\Models\Product;
use App\Models\Quotation;
use App\Models\User;
use Yajra\DataTables\Facades\DataTables;

class DataTablesController extends Controller
{
    public function getAccountList(){
        $account = Account::all();
        return DataTables::of($account)
        ->editColumn('created_at', function ($account) {
            $result = date("d-m-Y",strtotime($account->created_at));
            return $result;
        })
        ->editColumn('updated_at', function ($account) {
            $result = date("d-m-Y",strtotime($account->updated_at));
            return $result;
        })
        ->addColumn('action', function ($account) {
            $editButton = '<a class="btn btn-info btn-sm text-white" href="'.route('accounts.edit',$account->id).'" role="button">Edit</a>';
            return $editButton;
        })
        ->rawColumns(['action','created_at','updated_at'])
        ->make(true);
    }

    public function getProductList()
    {
        $product = Product::select('*')->get();
        return Datatables::of($product)
        ->editColumn('cate_id', function ($product) {
            $cate = Cate::find($product->cate_id);
            $result = (isset($cate->name))? $cate->name : '';
            return $result;
        })
        ->editColumn('price', function ($product) {
            return number_format($product->price,0,',','.');
        })
        ->editColumn('enable', function ($product) {
            $enable = '<span class="enable" data-link="/admin/datatables/products/enable/'.$product->id.'/0"><i class="fas fa-ban text-danger fa-lg"></i></span>'; // enable == 0
            if ($product->enable == 1) {
                $enable = '<span class="enable" data-link="/admin/datatables/products/enable/'.$product->id.'/1"><i class="fas fa-check-circle text-success fa-lg"></i></span>';
            }
            return $enable;
        })
        ->editColumn('feature', function ($product) {
            $feature = '<span class="enable" data-link="/admin/datatables/products/feature/'.$product->id.'/0"><i class="far fa-star text-secondary fa-lg"></i></span>'; // enable == 0
            if ($product->feature == 1) {
                $feature = '<span class="enable" data-link="/admin/datatables/products/feature/'.$product->id.'/1"><i class="fas fa-star text-warning fa-lg"></i></span>';
            }
            return $feature;
        })
        ->addColumn('action', function ($product) {
            $editButton = '<a class="btn btn-info btn-sm text-white" href="'.route('products.edit',$product->id).'" role="button">Edit</a>';
            $deleteButton = '<button name="delete" type="button" class="btn btn-light btn-sm" data-id="'.$product->id.'" data-link="'.route('products.destroy',$product->id).'">Delete</button>';
            return $editButton.' '.$deleteButton;
        })
        ->rawColumns(['action','enable','feature','cate_id'])
        ->make(true);
    }

    public function getUserList()
    {
        $user = User::all();
        return DataTables::of($user)
        ->editColumn('enable', function ($user) {
            $enable = '<span class="enable" data-link="/admin/datatables/users/enable/'.$user->id.'/0"><i class="fas fa-ban text-danger fa-lg"></i></span>'; // enable == 0
            if ($user->enable == 1) {
                $enable = '<span class="enable" data-link="/admin/datatables/users/enable/'.$user->id.'/1"><i class="fas fa-check-circle text-success fa-lg"></i></span>';
            }
            return $enable;
        })
        ->addColumn('action', function ($user) {
            $editButton = '<a class="btn btn-info btn-sm text-white" href="'.route('users.edit',$user->id).'" role="button">Edit</a>';
            $deleteButton = '<button name="delete" type="button" class="btn btn-light btn-sm" data-id="'.$user->id.'" data-link="'.route('users.destroy',$user->id).'">Delete</button>';
            return $editButton.' '.$deleteButton;
        })
        ->rawColumns(['action','enable'])
        ->make(true);
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
        ->editColumn('subTotal', function ($quo) {
            return number_format($quo->subTotal,0,',','.');
        })
        ->editColumn('tax', function ($quo) {
            $tax = $quo->tax.'%';
            return $tax;
        })
        ->editColumn('total', function ($quo) {
            return number_format($quo->total,0,',','.');
        })
        ->addColumn('action', function ($quo) {
            $editButton = '<a class="btn btn-info btn-sm text-white" href="'.route('quotations.edit',$quo->id).'" role="button">Edit</a>';
            //$deleteButton = '<button name="delete" type="button" class="btn btn-light btn-sm" data-id="'.$quo->id.'" data-link="'.route('quotations.destroy',$quo->id).'">Delete</button>';
            $viewButton = '<button data-link="'.route('quotations.show',$quo->id).'" type="button" class="btn btn-primary btn-sm quickview" data-toggle="modal" data-target="#quickview">View</button>';
            $approved = ($quo->approved != 0)? '<span class="text-success approved"><i class="fas fa-clipboard-check fa-lg"></i></span>' : '<span class="text-secondary pending-approve"><i class="fas fa-clipboard fa-lg"></i></span>';
            $locked = ($quo->locked == 0)? '<span class="text-success approved"><i class="fas fa-unlock-alt fa-lg"></i></span>' : '<span class="text-danger pending-approve"><i class="fas fa-lock fa-lg"></i></span>';
              
            return $viewButton.' '.$editButton.' '.$approved.' '.$locked;
        })
        ->rawColumns(['action','enable','cate_id','partner_id','subTotal','tax','total'])
        ->make(true);
    }
}

