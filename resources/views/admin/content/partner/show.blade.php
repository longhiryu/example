<div class="container-fluid">
    <div class="row info">
        <div class="col-md-6">
            <span class="font-weight-bold">{{$partner->shortName}}</span><br />
            <span class="">Tax code: {{$partner->taxCode}}</span><br />
            <span class="">Add: {{$partner->address}}</span><br />
            <span class="">Phone: {{$partner->phone}}</span><br />
            <span class="">{{$partner->email}}</span><br />
        </div>
        <div class="col-md-6"></div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th style="width: 10px">#</th>
                        <th>Task</th>
                        <th>Progress</th>
                        <th style="width: 40px">Label</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($projects as $project)
                    <tr>
                        <td>1.</td>
                        <td>{{$project->name}}</td>
                        <td>
                            <div class="progress progress-xs">
                                <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
                            </div>
                        </td>
                        <td>{{number_format($project->total,0,',','.')}}</td>
                    </tr> 
                    @endforeach
                    
                </tbody>
            </table>
        </div>
    </div>
</div>
