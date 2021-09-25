<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MyController extends Controller
{
    static function applyBack($id = null, $controller)
    {
        if ($id != null) {
            return redirect()->back();
        }else{
            return redirect()->route('quotations.edit', $id);
        }
    }
}
