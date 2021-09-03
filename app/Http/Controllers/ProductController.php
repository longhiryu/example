<?php

namespace App\Http\Controllers;

use App\Models\Cate;
use App\Models\Product;
use GuzzleHttp\Handler\Proxy;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // return view, data will be get at datatables function
        return view('admin.content.product.list');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::find($id);
        $cate = Cate::where('table', Product::getTableName())->get();
        return view('admin.content.product.edit', compact('product', 'cate'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->productValidate($request, $id);
        $product = $request->all();
        $submit = $product['submit'];
        unset($product['submit']);
        unset($product['_method']);
        unset($product['_token']);
        $product['price'] = (double)$request->price;

        Product::where('id', $id)->update($product);
        return $this->applyBack($submit);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Product::destroy($id);
        return response()->json([
            'message' => 'deleted'
        ], 200);
    }

    public function enableUpdate($id, $enable)
    {
        $update = ($enable == 0) ? 1 : 0;
        Product::where('id', $id)->update(['enable' => $update]);
        return response()->json([
            'id' => $id,
            'enable' => $update
        ], 200);
    }

    public function featureUpdate($id, $feature)
    {
        $update = ($feature == 0) ? 1 : 0;
        Product::where('id', $id)->update(['feature' => $update]);
        return response()->json([
            'id' => $id,
            'feature' => $update
        ], 200);
    }

    public function applyBack($submit)
    {
        if ($submit == 'apply_create') :
            $id = Product::all()->last()->id;
            return redirect()->route('products.edit', ['product' => $id]);
        elseif ($submit == 'apply_update') :
            return redirect()->back();
        else :
            return redirect()->route('products.index');
        endif;
    }

    public function productValidate(Request $request, $id = null)
    {
        $validateData = $request->validate(
            [
                'name' => 'required|unique:products,name,' . $id,
                'img' => 'required|unique:products,img,' . $id,
                'price' => 'numeric|min:0|max:1000000000',
            ],
            [
                'name.required' => 'Product name can not be empty!',
                'name.unique' => 'Product name existed!',
                'img.required' => 'Product image can not be empty!',
                'img.unique' => 'Product image is used by another product!'
            ]
        );

        return $validateData;
    }
}
