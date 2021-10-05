@extends('admin.admin-master')

@section('title', 'Project')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Project</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item "><a href="{{route('projects.index')}}">Project</a></li>
                    <li class="breadcrumb-item active">{{$project->name}}</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <form method="POST" action="{{route('projects.update',$project->id)}}">
        @method('PUT')
        @csrf
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="card card-outline card-info">
                        <div class="card-header">
                            <h3 class="card-title">{{$project->name}}</h3>
                            <div class="card-tools">
                                <!-- Buttons, labels, and many other things can be placed here! -->
                                <!-- Here is a label for example -->
                                <button type="submit" class="btn btn-success btn-sm"><i class="fas fa-check-square"></i> Apply / Save</button>
                                <button type="button" class="btn btn-light btn-sm exit" data-url="{{route('projects.index')}}"><i class="fas fa-sign-out-alt"></i> Exit</button>
                            </div>
                            <!-- /.card-tools -->
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                            @endif

                            <label for="quoation-name">Project name (*):</label>
                            <div class="input-group mb-3">
                                <input id="quoation-name" name="name" value="{{$project->name}}" type="text" class="form-control">
                            </div>

                            <label for="contact">Contact (*):</label>
                            <div class="input-group mb-3">
                                <input id="contact" value="{{$contact->fullname}}" type="text" class="form-control">
                                <input id="contact_id" name="contact_id" value="{{$contact->id}}" type="hidden" class="form-control">
                            </div>

                            <label for="contact">Partner (*):</label>
                            <div class="input-group mb-3">
                                <input id="partner" value="{{$partner->companyName}}" type="text" class="form-control">
                                <input id="partner_id" name="partner_id" value="{{$partner->id}}" type="hidden" class="form-control">
                            </div>

                            <label for="contact">Location (*):</label>
                            <div class="input-group mb-3">
                                <input id="location" name="location" value="{{$project->location}}" type="text" class="form-control">
                            </div>

                        </div>
                    </div>
                </div> <!-- col-md-4-->

                <div class="col-md-8">
                    <div class="card card-outline card-info">
                        <div class="card-header">
                            <h3 class="card-title">Thông tin giá trị</h3>
                            <div class="card-tools">
                                @if($project->run == 0)
                                   <button id="runProject" data-id="{{$project->id}}" type="button" class="btn btn-primary btn-sm">Run this project</button> 
                                @else
                                    <span class="badge badge-pill badge-success">Project is running!</span>
                                @endif
                            </div>
                        </div>
                        
                        <div class="card-body">
                            <table class="table table-striped" style="font-size: 0.9rem;">
                                <thead>
                                    <tr>
                                        <th class="text-center p-1">ID</th>
                                        <th class="text-center p-1">Quotation name</th>
                                        <th class="text-center p-1">Type</th>
                                        <th class="text-center p-1">Date</th>
                                        <th class="text-center p-1">Value</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $value_in = $value_out = 0;?>
                                    @foreach($quotations as $quotation)
                                    <?php 
                                        if ($quotation->type == 'in') {
                                            $value_in += $quotation->total; 
                                        }else{
                                            $value_out += $quotation->total; 
                                        }
                                    ?>
                                    <tr>
                                        <td class="p-1 text-center">{{$quotation->id}}</td>
                                        <td class="p-1">{{$quotation->name}}</td>
                                        <td class="p-1 {{($quotation->type == 'in')? 'text-warning':'text-info'}}">
                                            <?php 
                                                $type = ($quotation->type == 'in')? 'Đầu vào (NCC)':'Đầu ra (KH)';
                                                echo $type;    
                                            ?>
                                        </td>
                                        <td class="p-1 text-center">{{date("d/m/Y",strtotime($quotation->created_at))}}</td>
                                        <td class="p-1 text-center {{($quotation->type == 'in')? 'text-warning':'text-info'}}">
                                            {{number_format($quotation->total,0,',','.')}}
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>

                            <span class="text-info">{{number_format($value_out,0,',','.')}}</span> <br />
                            <span class="text-warning">{{number_format($value_in,0,',','.')}}</span> <br />
                            <?php $profit = $value_out - $value_in;?>
                            <span class="font-weight-bold {{($profit > 0)? 'text-success':'text-danger'}}">
                                {{number_format($profit,0,',','.')}}
                            </span>
                        </div>
                    </div><!-- card-->
                </div>
                <!-- col-md-8-->

                <div class="col-md-12">
                    <div class="card card-outline card-info">
                        <div class="card-header">Note</div>
                        <div class="card-body">
                            <textarea name='note' id='desc'>{{$project->note}}</textarea>
                        </div>
                    </div>
                </div>
                <!-- col-md-12-->

            </div> <!-- row -->
        </div><!-- container -->

    </form>
</div>


<!-- Modal -->
<div class="modal fade" id="quickview" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Bảng báo giá (chế độ xem nhanh)</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<!-- /.content -->
@endsection

@push('scripts')
<script>
    $(document).ready(function() {

        $("button.quickview").click(function() {
            var link = $(this).attr('data-link');
            axios.get(link).then(function(response) {
                $('.modal-body').html(response.data);
                console.log(response);
            });
        });

        $('#runProject').click(function () { 
            var id = $(this).attr('data-id')
            var link = '/admin/run/projects/'+id;
            $.confirm({ // Jquery confirm
                title: 'Run project confirm!'
                , content: 'Do you want to set this project to running status!'
                , type: 'blue'
                , buttons: {
                    ok: {
                        text: "Yes, run!"
                        , btnClass: 'btn-info'
                        , action: function() {
                            axios.get(link).then(function(response) {
                                console.log(response);
                                location.reload();
                            });
                        }
                    }
                    , cancel: function() {
                        toastr.success('OK! Just relax!');
                    }
                }
            });// Jquery confirm
        });

        var contact = {
            url: function(phrase) {
                return "/admin/search/contact/" + phrase;
            }
            , getValue: "fullname"
            , list: {
                match: {
                    enabled: true
                }
            }
            , theme: "square"
            , requestDelay: 500
            , minCharNumber: 3
            , adjustWidth: false
            , list: {

                onSelectItemEvent: function() {
                    var value = $("#contact").getSelectedItemData().id;

                    $("#contact_id").val(value).trigger("change");
                }
            }
        };

        $("#contact").easyAutocomplete(contact);


        var partner = {
            url: function(phrase) {
                return "/admin/search/partner/" + phrase;
            }
            , getValue: "companyName"
            , list: {
                match: {
                    enabled: true
                }
            }
            , theme: "square"
            , requestDelay: 500
            , minCharNumber: 3
            , adjustWidth: false
            , list: {

                onSelectItemEvent: function() {
                    var value = $("#partner").getSelectedItemData().id;

                    $("#partner_id").val(value).trigger("change");
                }
            }
        };

        $("#partner").easyAutocomplete(partner);


        var quotation = {
            url: function(phrase) {
                return "/admin/search/quotation/" + phrase;
            }
            , getValue: "name"
            , list: {
                match: {
                    enabled: true
                }
            }
            , theme: "square"
            , requestDelay: 500
            , minCharNumber: 3
            , adjustWidth: false
            , list: {

                onSelectItemEvent: function() {
                    var value = $("#quotation").getSelectedItemData().id;

                    $("#quotation_id").val(value).trigger("change");
                }

            }
        };

        $("#quotation").easyAutocomplete(quotation);
    });

</script>
@endpush
