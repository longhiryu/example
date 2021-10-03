@extends('admin.admin-master')

@section('title', 'content')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Quotation</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Quotation</li>
                    <li class="breadcrumb-item active">Create new</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <form method="POST" action="{{route('quotations.store')}}">
        @csrf
        <div class="card card-outline card-info mx-3">
            <div class="card-header">
                <h3 class="card-title">New quotation</h3>
                <div class="card-tools">
                    <!-- Buttons, labels, and many other things can be placed here! -->
                    <!-- Here is a label for example -->
                    <button type="submit" class="btn btn-success btn-sm"><i class="fas fa-check-square"></i> Apply / Save</button>
                    <button type="button" class="btn btn-light btn-sm exit" data-url="{{route('quotations.index')}}"><i class="fas fa-sign-out-alt"></i> Exit</button>
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
                            <label for="quoation-name">Quotation name (*):</label>
                            <div class="input-group mb-3">
                                <input id="quoation-name" name="name" value="{{old('name')}}" type="text" class="form-control">
                                <input id="author" name="author" value="{{Auth::user()->id}}" type="hidden">
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

                        <div class="col-md-2">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">SKU (*)</span>
                                </div>
                                <input id="sku" name="sku" value="{{old('sku')}}" type="text" class="form-control text-right">
                            </div>
                        </div><!-- col-md-2-->

                        <div class="col-md-2">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Version (*)</span>
                                </div>
                                <input id="version" name="version" value="{{old('version')}}" type="text" class="form-control text-right">
                            </div>
                        </div><!-- col-md-2-->

                        <div class="col-md-4">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Tax (default 10%)</span>
                                </div>
                                <select class="custom-select" id="tax" name="tax">
                                    <option value="10" selected>Default</option>
                                    <option value="10">10%</option>
                                    <option value="3">03%</option>
                                    <option value="0">0%</option>
                                </select>
                            </div>
                        </div><!-- col-md-4-->

                        <div class="col-md-4">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Type (*)</span>
                                </div>
                                <select class="custom-select" id="type" name="type">
                                    <option value="in">Đầu vào (NCC)</option>
                                    <option value="out">Đầu ra (KH)</option>
                                </select>
                            </div>
                        </div><!-- col-md-4-->

                        <div class="col-md-6">
                            <label for="project">Project (*):</label>
                            <div class="input-group mb-3">
                                <input id="project" value="" type="text" class="form-control">
                                <input id="project_id" name="project_id" value="" type="hidden" class="form-control">
                            </div>
                        </div><!-- col-md-6-->

                        <div class="col-md-12 py-2 mb-3 rounded-lg">
                            <label for="contact">Add product (*):</label>
                            <div class="row">
                                <div class="input-group mb-3 col-md-8">
                                    <input id="addProduct" value="" type="text" class="form-control d-inline">
                                </div>
                                <div class="col-md-4">
                                    <button type="button" class="update-list btn btn-info btn-sm mr-1">Update list</button>
                                    <button type="button" class="clear-list btn btn-danger btn-sm ">Clear list</button>
                                </div>
                            </div>

                            <div class="details">
                                
                            </div>

                        </div><!-- col-md-12-->

                        <div class="col-md-12">
                            <label class="form-check-label mb-3" for="desc">
                                Note (*):
                            </label>
                            <textarea name='note' id='desc'>
                            
                            </textarea>
                        </div><!-- col-md-12-->
                    </div> <!-- row-->
                </div><!-- container-fluid-->


            </div>
        </div>
    </form>
</div>
<!-- /.content -->
@endsection

@push('scripts')
<script>
    $(document).ready(function() {

        $('#tax').on('change',function(){
            var tax = this.value;
            var link = '/admin/quotation/update-tax/'+tax;
            axios.get(link).then(function(response) {
                $('.details').html(response.data);
                toastr.success('List is updated!');
                console.log(response);
            });
            
        });

        $('.update-list').click(function(){
            var link = '/admin/quotation/update-list/';
            axios.get(link).then(function(response) {
                $('.details').html(response.data);
                if (response.data != '') {
                   toastr.success('List is updated!'); 
                }else{
                    toastr.warning('There is nothing in list!'); 
                }
                
                console.log(response);
            });
        })

        $('.clear-list').click(function(){
            var link = '/admin/quotation/clear-list/';
            $.confirm({ // Jquery confirm
                title: 'Clear confirm!'
                , content: 'Are you want to clear this list?'
                , type: 'red'
                , buttons: {
                    ok: {
                        text: "Yes, clear list!"
                        , btnClass: 'btn-danger'
                        , action: function() {
                            axios.get(link).then(function(response) {
                                $('.details').html('');
                                toastr.warning('List is cleared!');
                                console.log(response);
                            });
                        }
                    }
                    , cancel: function() {
                        toastr.success('OK! Just relax!');
                    }
                }
            });// Jquery confirm
            
        })

        $(document).on('click',".delete-line",function(){
            var dataID = $(this).attr('data-id');
            var link = '/admin/quotation/delete-item/'+dataID;
            $.confirm({ // Jquery confirm
                title: 'Delete confirm!'
                , content: 'Are you want to delete this?'
                , type: 'red'
                , buttons: {
                    ok: {
                        text: "Yes, delet this!"
                        , btnClass: 'btn-danger'
                        , action: function() {
                            axios.get(link).then(function(response) {
                                $('.details').html(response.data);
                                toastr.success('Deleted!');
                                console.log(response);
                            });
                        }
                    }
                    , cancel: function() {
                        toastr.success('OK! Just relax!');
                    }
                }
            });// Jquery confirm
        });

        $(document).on('change',"input.name",function(){
            var dataID = $(this).attr('data-id');
            var value = $(this).val();
            var link = '/admin/quotation/update-item/'+dataID+"/name/"+value;
            axios.get(link).then(function(response) {
                $('.details').html(response.data);
                console.log(response);
            });
        });

        $(document).on('change',"input.quantity",function(){
            var dataID = $(this).attr('data-id');
            var value = $(this).val();
            if(value < 1){
                value = 1;
            }
            var link = '/admin/quotation/update-item/'+dataID+"/quantity/"+value;
            axios.get(link).then(function(response) {
                $('.details').html(response.data);
                console.log(response);
            });
        });

        $(document).on('change',"input.price",function(){
            var dataID = $(this).attr('data-id');
            var value = $(this).val();
            if(value < 1){
                value = 1;
            }
            var link = '/admin/quotation/update-item/'+dataID+"/price/"+value;
            axios.get(link).then(function(response) {
                $('.details').html(response.data);
                console.log(response);
            });
        });

        $(document).on('change',"input.unit",function(){
            var dataID = $(this).attr('data-id');
            var value = $(this).val();
            var link = '/admin/quotation/update-item/'+dataID+"/unit/"+value;
            axios.get(link).then(function(response) {
                $('.details').html(response.data);
                console.log(response);
            });
        });

        $(document).on('change',"input.dimension",function(){
            var dataID = $(this).attr('data-id');
            var value = $(this).val();
            var link = '/admin/quotation/update-item/'+dataID+"/dimension/"+value;
            axios.get(link).then(function(response) {
                $('.details').html(response.data);
                console.log(response);
            });
        });



        $("#tax").change(function() {
            costQuotation();
        })

        $("#subTotal").keyup(function() {
            costQuotation();
        })

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


        var product = {
            url: function(phrase) {
                return "/admin/search/product/" + phrase;
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
            ,list: {

                onClickEvent: function() {
                    var id = $("#addProduct").getSelectedItemData().id;
                    addItem(id);
                },
                onKeyEnterEvent: function() {
                    var id = $("#addProduct").getSelectedItemData().id;
                    addItem(id);
                }

            }
        };

        $("#addProduct").easyAutocomplete(product);


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

    function costQuotation() {
        var tax = Number($("select#tax").val());
        var subTotal = Number($("#subTotal").val());
        var taxCost = (subTotal * tax) / 100;
        var total = subTotal + taxCost;
        total = new Intl.NumberFormat('vn-VN').format(total);
        taxCost = new Intl.NumberFormat('vn-VN').format(taxCost);
        $(".display-tax").val(taxCost);
        $("#total").val(total);
    }

    function addItem(id){
        var link = '/admin/quotation/add-item/'+id;
        axios.get(link).then(function(response) {
            $('.details').html(response.data);
            console.log(response);
        });
    }

</script>
@endpush
