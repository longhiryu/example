<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Models\Role;
use Illuminate\Http\Request;

class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = Role::all();
        $models = $this->getClassesList();
        return view('admin.content.permission.create',compact('roles','models'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->permissionValidate($request);
        $data = $request->all();
        unset($data['_method']);
        unset($data['_token']);

        Permission::create($data);

        return $this->applyBack(null);
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
        $data = Permission::find($id);
        $models = $this->getClassesList();
        $roles = Role::all();
        return view('admin.content.permission.edit',compact('data','models','roles'));
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
        $this->permissionValidate($request,$id);
        $data = $request->all();
        unset($data['_method']);
        unset($data['_token']);

        Permission::where('id',$id)->update($data);

        return $this->applyBack(null);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function getPermissionByRoleAndModel($role_id){
        return Permission::select('*')->where('role_id',$role_id)->get();
    }

    public function getClassesList()
    {
        $classes = \File::allFiles(app_path('Models'));
        foreach ($classes as $class) {
            $class->classname = str_replace([app_path(),'Models','.php','\\'],['','',''.''],$class->getRealPath());
            //$class->classname = stripslashes($class->classname);
        }
        return $classes;
    }

    public function applyBack($id = null)
    {
        if ($id != null) {
            return redirect()->back();
        }else{
            $id = Permission::all()->last()->id;
            return redirect()->route('permissions.edit', $id);
        }
    }

    public function permissionValidate(Request $request, $id = null)
    {
        $validateData = $request->validate(
            [
                'name' => "required|unique:pms,name,".$id,
                'allow' => 'required',
                'role_id' => 'required',
                'action' => 'required',
                'model' => 'required'
            ]
        );

        return $validateData;
    }
}
