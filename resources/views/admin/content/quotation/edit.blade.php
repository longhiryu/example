@extends('admin.admin-master')

@section('title', 'content')

@section('content')
<?php 
    $approved = ($data->approved == 0)? '<i class="fas fa-clipboard text-danger"></i>':'<i class="fas fa-clipboard-check text-success"></i>';
    $locked = ($data->locked == 0)? '<i class="fas fa-unlock-alt text-success"></i>':'<i class="fas fa-lock text-danger"></i>';
?>
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
                    <li class="breadcrumb-item active">Edit</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <form method="POST" action="{{route('quotations.update',$data->id)}}">
        @method('PUT')
        @csrf
        <div class="card card-outline card-info mx-3">
            <div class="card-header">
                <h3 class="card-title">{{$data->name}} {!!$approved!!} {!!$locked!!}</h3>
                <div class="card-tools">
                    <!-- Buttons, labels, and many other things can be placed here! -->
                    <!-- Here is a label for example -->
                    @if ($data->locked == 0)
                    <button type="submit" class="btn btn-success btn-sm">Apply / Save</button>
                    @endif
                    <!-- PDF-->
                    @if ($data->approved != 0)
                    <a class="btn btn-info btn-sm" href="/admin/quotation-pdf/{{$data->id}}" role="button">Export PDF</a>
                    @endif
                     | <button type="button" class="btn btn-light btn-sm exit" data-url="{{route('quotations.index')}}"><i class="fas fa-sign-out-alt"></i> Exit</button>
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
                                <input id="quoation-name" name="name" value="{{$data->name}}" type="text" class="form-control">
                            </div>
                        </div> <!-- col-md-4-->

                        <div class="col-md-4">
                            <label for="contact">Contact (*):</label>
                            <div class="input-group mb-3">
                                <input id="contact" value="{{$contact->fullname}}" type="text" class="form-control">
                                <input id="contact_id" name="contact_id" value="{{$contact->id}}" type="hidden" class="form-control">
                            </div>
                        </div><!-- col-md-4-->

                        <div class="col-md-4">
                            <label for="contact">Partner (*):</label>
                            <div class="input-group mb-3">
                                <input id="partner" value="{{$partner->companyName}}" type="text" class="form-control">
                                <input id="partner_id" name="partner_id" value="{{$partner->id}}" type="hidden" class="form-control">
                            </div>
                        </div><!-- col-md-4-->

                        <div class="col-md-2">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">SKU (*)</span>
                                </div>
                                <input id="sku" name="sku" value="{{$data->sku}}" type="text" class="form-control text-right">
                            </div>
                        </div><!-- col-md-2-->

                        <div class="col-md-2">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Version (*)</span>
                                </div>
                                <input id="version" name="version" value="{{$data->version}}" type="text" class="form-control text-right">
                            </div>
                        </div><!-- col-md-2-->

                        <div class="col-md-4">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Tax (default 10%)</span>
                                </div>
                                <?php 
                                    $tax = [10,3,0];   
                                ?>
                                <select class="custom-select" id="tax" name="tax">
                                    <option value="10">Default</option>
                                    @foreach($tax as $value)
                                        <?php 
                                            $select = ($value == $data->tax)? 'selected' : null;
                                        ?>
                                        <option {{$select}} value="{{$value}}">{{$value}}%</option>
                                    @endforeach
                                </select>
                            </div>
                        </div><!-- col-md-4-->

                        <div class="col-md-4">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Type (*)</span>
                                </div>
                                <select class="custom-select" id="type" name="type">
                                    <option value="in" {{($data->type == 'in')? 'selected':null}}>?????u v??o (NCC)</option>
                                    <option value="out" {{($data->type == 'out')? 'selected':null}}>?????u ra (KH)</option>
                                </select>
                            </div>
                        </div><!-- col-md-4-->

                        <div class="col-md-6">
                            <label for="project">Project (*):</label>
                            <div class="input-group mb-3">
                                <input id="project" value="{{$project->name}}" type="text" class="form-control">
                                <input id="project_id" name="project_id" value="{{$project->id}}" type="hidden" class="form-control">
                            </div>
                        </div><!-- col-md-6-->

                        <div class="col-md-12 border py-2 mb-3 rounded-lg">
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
                                {{$data->note}}
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

        $('.approve').click(function(){
            var link = $(this).attr('data-url');
            $.confirm({ // Jquery confirm
                title: 'Approved confirm!'
                , content: 'Do you want to approve this Quotation? You can not edit this Quotation after aprroved!'
                , type: 'red'
                , buttons: {
                    ok: {
                        text: "Yes, approve!"
                        , btnClass: 'btn-danger'
                        , action: function() {
                            axios.get(link).then(function(response) {
                                toastr.success('The Quotation is approved!'); 
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

        $('.unlock').click(function(){
            var link = $(this).attr('data-url');
            $.confirm({ // Jquery confirm
                title: 'Unlock confirm!'
                , content: 'Do you want to unlock this Quotation? The author can be edit content after unlocked!'
                , type: 'red'
                , buttons: {
                    ok: {
                        text: "Yes, unlock!"
                        , btnClass: 'btn-danger'
                        , action: function() {
                            axios.get(link).then(function(response) {
                                toastr.success('The Quotation is unlocked!'); 
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

        $('.remove-approved').click(function(){
            var link = $(this).attr('data-url');
            axios.get(link).then(function(response) {
                toastr.warning('The Quotation is unapproved!'); 
                console.log(response);
                location.reload();
            });
        });

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
