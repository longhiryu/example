<?php

namespace App\Http\Controllers;

use App\Models\Cate;
use App\Models\Partner;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class DataTablesController extends Controller
{
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

    public function getPartnerList()
    {
        $partner = Partner::all();
        return DataTables::of($partner)
        ->addColumn('action', function ($partner) {
            $editButton = '<a class="btn btn-info btn-sm text-white" href="'.route('partners.edit',$partner->id).'" role="button">Edit</a>';
            $deleteButton = '<button name="delete" type="button" class="btn btn-light btn-sm" data-id="'.$partner->id.'" data-link="'.route('partners.destroy',$partner->id).'">Delete</button>';
            return $editButton.' '.$deleteButton;
        })
        ->rawColumns(['action','enable'])
        ->make(true);
    }
}
