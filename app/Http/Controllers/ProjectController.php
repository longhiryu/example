<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\Partner;
use App\Models\Project;
use App\Models\Quotation;
use App\Models\QuotationDetail;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.content.project.list');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.content.project.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->except('_token','_method');

        // create new project
        $new = Project::create($data);

        return redirect()->route('projects.edit',$new->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function show(Project $project)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function edit(Project $project)
    {
        $contact = Contact::find($project->contact_id);
        $partner = Partner::find($project->partner_id);
        $quotations = Quotation::where('project_id',$project->id)->orderBy('type','desc')->get();
        return view('admin.content.project.edit',compact('project','contact','partner','quotations'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Project $project)
    {
        $data = $request->except('_token','_method');

        // Add value to data array
        $quotation = Quotation::find($data['quotation_id']);
        $data['subTotal'] = $quotation->subTotal;
        $data['total'] = $quotation->subTotal * 1.1;
        $data['tax'] = $quotation->total - $quotation->subTotal;

        //Update project
        Project::where('id',$project->id)->update($data);

        return redirect()->route('projects.edit',$project->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $project)
    {
        //
    }

    public function searchProject($text)
    {
        $result = Project::select('id','name')->where('name', 'LIKE', "%{$text}%")->get(); 
        return response()->json($result);
    }

    public function runProject($id)
    {
        Project::where('id',$id)->update(['run' => '1']);
        return response()->json('success',200);
    }
}
