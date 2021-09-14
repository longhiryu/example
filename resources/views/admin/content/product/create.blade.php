@extends('admin.admin-master')

@section('title', 'content')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Product create:</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Starter Page</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <form method="POST" action="{{route('products.store')}}">
        @csrf
        <div class="card card-outline card-info mx-3">
            <div class="card-header">
                <h3 class="card-title">New product</h3>
                <div class="card-tools">
                    <!-- Buttons, labels, and many other things can be placed here! -->
                    <!-- Here is a label for example -->
                    <button type="submit" name="submit" value="apply_create" class="btn btn-success btn-sm"><i class="fas fa-check-square"></i> Apply / Save</button>
                    <button type="button" class="btn btn-light btn-sm exit" data-url="{{route('products.index')}}"><i class="fas fa-sign-out-alt"></i> Exit</button>
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
                            <label for="product-name">Product name (*):</label>
                            <div class="input-group mb-3">
                                <input id="product-name" name="name" value="{{old('name')}}" type="text" class="form-control">
                            </div>

                            <label for="product-price">Product price (*):</label>
                            <span class="price-format"></span>
                            <div class="input-group mb-3">
                                <input id="product-price" name="price" value="{{old('price')}}" type="number" class="form-control text-right">
                            </div>

                            <label for="cate_id">Category:</label>
                            <div class="input-group mb-3">
                                <select class="custom-select form-control" id="cate_id" name="cate_id">
                                    <option value="">Choose...</option>
                                    @foreach($cate as $item)
                                    <option value="{{$item->id}}" {{old ('cate_id') == $item->id ? 'selected' : ''}}>{{$item->name}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="hidden" value="0" id="Disable" name="enable">
                                <input class="form-check-input" type="checkbox" value="1" id="Enable" name="enable">
                                <label class="form-check-label" for="Enable">
                                    Enable (show in frontpage)
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="hidden" value="0" id="Unfeature" name="feature">
                                <input class="form-check-input" type="checkbox" value="1" id="Feature" name="feature">
                                <label class="form-check-label" for="Feature">
                                    Feature (show in homepage)
                                </label>
                            </div>

                            <label class="mt-2" for="img">Image (*):
                                <a data-fancybox data-type="iframe" data-src="{{ url('plugins/filemanager/dialog.php?type=1&field_id=img') }}" href="javascript:;">
                                    (click here to browse...)
                                </a>
                            </label>
                            <input value="{{old('img')}}" name="img" type="text" class="form-control" id="img">
                            <img class="w-100 img-rounded mt-3" id="view-img" src="{{old('img')}}" />
                        </div>


                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="product-sku">SKU:</label>
                                    <div class="input-group mb-3">
                                        <input id="product-sku" name="sku" value="{{old('sku')}}" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <label for="product-weight">Weight (kg):</label>
                                    <div class="input-group mb-3">
                                        <input id="product-weight" name="weight" value="{{old('weight')}}" type="number" class="form-control" placeholder="kg">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <label for="product-dimension">Dimension:</label>
                                    <div class="input-group mb-3">
                                        <input id="product-dimension" name="dimension" value="{{old('dimension')}}" type="text" class="form-control" placeholder="L x W x H">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <label for="product-unit">Unit:</label>
                                    <div class="input-group mb-3">
                                        <input id="product-unit" name="unit" value="{{old('unit')}}" type="text" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <label for="product-title">Title:</label>
                            <div class="input-group mb-3">
                                <input id="product-title" name="title" value="{{old('title')}}" type="text" class="form-control">
                            </div>

                            <label for="product-keyword">Keywords:</label>
                            <div class="input-group mb-3">
                                <input id="product-keyword" name="keyword" value="{{old('keyword')}}" type="text" class="form-control">
                            </div>

                            <label for="product-sum">Meta Desc:</label>
                            <div class="input-group mb-3">
                                <input id="product-sum" name="sum" value="{{old('sum')}}" type="text" class="form-control">
                            </div>

                            <label class="form-check-label mb-3" for="desc">
                                Description:
                            </label>
                            <textarea name='desc' id='desc'>
                                {{old('desc')}}
                            </textarea>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </form>
</div>
<!-- /.content -->
@endsection

@push('scripts')
    <script>
        $(document).ready(function () {
            $('input[name=price]').keyup(function (e) { 
                var number = Number($(this).val());
                var fNumber = new Intl.NumberFormat('vn-VN').format(number);
                $('.price-format').html(fNumber);
            });
        });
    </script>
@endpush