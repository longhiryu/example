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
                    <li class="breadcrumb-item active">Project</li>
                    <li class="breadcrumb-item active">Create new</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <form method="POST" action="{{route('projects.store')}}">
        @csrf
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card card-outline card-info">
                        <div class="card-header">
                            <h3 class="card-title">New project</h3>
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

                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="quoation-name">Project name (*):</label>
                                        <div class="input-group mb-3">
                                            <input id="quoation-name" name="name" value="{{old('name')}}" type="text" class="form-control">
                                        </div>
                                    </div> <!-- col-md-4-->

                                    <div class="col-md-4">
                                        <label for="contact">Contact (*):</label>
                                        <div class="input-group mb-3">
                                            <input id="contact" value="" type="text" class="form-control">
                                            <input id="contact_id" name="contact_id" value="" type="hidden" class="form-control">
                                        </div>
                                    </div><!-- col-md-4-->

                                    <div class="col-md-4">
                                        <label for="contact">Partner (*):</label>
                                        <div class="input-group mb-3">
                                            <input id="partner" value="" type="text" class="form-control">
                                            <input id="partner_id" name="partner_id" value="" type="hidden" class="form-control">
                                        </div>
                                    </div><!-- col-md-4-->

                                    <div class="col-md-6">
                                        <label for="contact">Quotation (*):</label>
                                        <div class="input-group mb-3">
                                            <input id="quotation" value="" type="text" class="form-control">
                                            <input id="quotation_id" name="quotation_id" value="" type="hidden" class="form-control">
                                        </div>
                                    </div><!-- col-md-6-->

                                    <div class="col-md-6">
                                        <label for="contact">Location (*):</label>
                                        <div class="input-group mb-3">
                                            <input id="location" name="location" value="{{old('location')}}" type="text" class="form-control">
                                        </div>
                                    </div><!-- col-md-6-->

                                    <div class="col-md-12">
                                        <label class="form-check-label mb-3" for="desc">
                                            Note (*):
                                        </label>
                                        <textarea name='note' id='desc'>{{old('note')}}</textarea>
                                    </div><!-- col-md-12-->
                                </div> <!-- row-->
                            </div><!-- container-fluid-->


                        </div>
                    </div>
                </div> <!-- col-md-8-->

                <div class="col-md-4">
                    <div class="card card-outline card-info">
                        <div class="card-header">Giá trị</div>
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 text-right">Giá trị:</div><div class="col-md-6 font-weight-bold">0</div>
                                    <div class="col-md-6 text-right">Thuế:</div><div class="col-md-6 font-weight-bold">0</div>
                                    <div class="col-md-6 text-right">Tổng giá trị:</div><div class="col-md-6 font-weight-bold">0</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- col-md-4-->

            </div> <!-- row -->
        </div><!-- container -->

    </form>
</div>
<!-- /.content -->
@endsection

@push('scripts')
<script>
    $(document).ready(function() {

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
