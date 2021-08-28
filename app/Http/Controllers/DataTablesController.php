<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class DataTablesController extends Controller
{
    public function getProductList()
    {
        $product = Product::select('*')->get();
        return Datatables::of($product)
        ->addColumn('action', function ($product) {
            $editButton = '<a class="btn btn-info btn-sm text-white" href="'.route('products.edit',$product->id).'" role="button">Edit</a>';
            $deleteButton = '<button name="delete" type="button" class="btn btn-light btn-sm" data-id="'.$product->id.'" data-link="'.route('products.destroy',$product->id).'">Delete</button>';
            return $editButton.' '.$deleteButton;
        })
        ->rawColumns(['action'])
        ->make(true);
    }
}
