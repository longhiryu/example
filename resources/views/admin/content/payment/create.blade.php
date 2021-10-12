@extends('admin.admin-master')

@section('title', 'Payment create')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Payment create</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Payment create</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <form action="{{route('payments.store')}}" method="POST">
        @csrf
        <input type="hidden" name="user_id" value="{{ Auth::user()->id }}" >
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card card-outline card-info">
                        <div class="card-header">
                            <h3 class="card-title">Note</h3>
                            <div class="card-tools">
                            </div>
                            <!-- /.card-tools -->
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <textarea name='desc' id='desc'>
                            {{old('desc')}}
                            </textarea>
                        </div>
                        <!-- /.card-body -->
                    </div><!-- card-->

                </div>
                <!-- col-md-8-->
                <div class="col-md-4">
                    <div class="card card-outline card-info">
                        <div class="card-header">
                            <h3 class="card-title">New Payment</h3>
                            <div class="card-tools">
                                <!-- Buttons, labels, and many other things can be placed here! -->
                                <!-- Here is a label for example -->
                                <button type="submit" class="btn btn-success btn-sm"><i class="fas fa-check-square"></i> Apply / Save</button>
                                <button type="button" class="btn btn-light btn-sm exit" data-url="{{route('payments.index')}}"><i class="fas fa-sign-out-alt"></i> Exit</button>
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

                            <label for="payment-name">Payment name (*):</label>
                            <div class="input-group mb-3">
                                <input id="payment-name" name="name" value="{{old('name')}}" type="text" class="form-control">
                            </div>

                            <label for="account-name">Account (*):</label>
                            <div class="input-group mb-3">
                                <input id="account" value="" type="text" class="form-control">
                                <input id="account_id" name="account_id" value="" type="hidden" class="form-control">
                            </div>

                            <label for="partner-name">Partner (*):</label>
                            <div class="input-group mb-3">
                                <input id="partner" value="" type="text" class="form-control">
                                <input id="partner_id" name="partner_id" value="" type="hidden" class="form-control">
                            </div>

                            <label for="project-name">Project:</label>
                            <div class="input-group mb-3">
                                <input id="project" value="" type="text" class="form-control">
                                <input id="project_id" name="project_id" value="" type="hidden" class="form-control">
                            </div>

                            <label for="type-name">Type:</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="type" id="type-name">
                                    <option value="in">Phiếu thu</option>
                                    <option value="out">Phiếu chi</option>
                                </select>
                            </div>

                            <label for="value">Value (*):</label>
                            <span class="price-format"></span>
                            <div class="input-group mb-3">
                                <input id="value" name="value" value="{{old('value')}}" type="text" class="form-control text-right">
                            </div>


                            <label class="mt-2" for="img">Image (*):
                                <a data-fancybox data-type="iframe" data-src="{{ url('plugins/filemanager/dialog.php?type=1&field_id=img') }}" href="javascript:;">
                                    (click here to browse...)
                                </a>
                            </label>
                            <input value="{{old('img')}}" name="img" type="text" class="form-control" id="img">
                            <img class="w-100 img-rounded mt-3 cursor-pointer" id="view-img" src="{{old('img')}}" />
                            (click image to zoom)
                        </div>
                        <!-- /.card-body -->
                    </div>
                </div>
                <!-- col-md-4-->

            </div>
        </div>
    </form>
</div>
<!-- /.content -->


<!-- Modal -->
<div class="modal fade" id="quickview" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Chứng từ gốc</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <img class="w-100 img-rounded mt-3 view-zoom" src="" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
@endsection

@push('scripts')
<script>
    $(document).ready(function() {
        $('#value').keyup(function(e) {
            var number = Number($(this).val());
            var fNumber = new Intl.NumberFormat('vn-VN').format(number);
            $('.price-format').html(fNumber);
        });

        $("#view-img").click(function() {
            var src = $(this).attr('src');
            $('.view-zoom').attr('src', src);
            $('#quickview').modal('show');
        });


        var account = {
            url: function(phrase) {
                return "/admin/search/account/" + phrase;
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
                    var value = $("#account").getSelectedItemData().id;

                    $("#account_id").val(value).trigger("change");
                }
            }
        };

        $("#account").easyAutocomplete(account);

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

        var project = {
            url: function(phrase) {
                return "/admin/search/project/" + phrase;
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
                    var value = $("#project").getSelectedItemData().id;

                    $("#project_id").val(value).trigger("change");
                }
            }
        };

        $("#project").easyAutocomplete(project);
    });

</script>
@endpush
