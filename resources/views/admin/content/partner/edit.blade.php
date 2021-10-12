@extends('admin.admin-master')

@section('title', 'content')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Partner edit</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Partner</li>
                    <li class="breadcrumb-item active">{{$partner->companyName}}</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <form method="POST" action="{{route('products.update',$partner->id)}}">
        @method('PUT')
        @csrf
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="card card-outline card-info">
                        <div class="card-header">
                            <h3 class="card-title">{{$partner->shortName}}</h3>
                            <div class="card-tools">
                                <!-- Buttons, labels, and many other things can be placed here! -->
                                <!-- Here is a label for example -->
                                <button type="submit" class="btn btn-success btn-sm"><i class="fas fa-check-square"></i> Apply / Save</button>
                                <button type="button" class="btn btn-light btn-sm exit" data-url="{{route('partners.index')}}"><i class="fas fa-sign-out-alt"></i> Exit</button>
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
                            <label for="taxCode">Tax No. (*):</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text take-api">Lookup</span>
                                  </div>
                                <input id="taxCode" name="taxCode" value="{{$partner->taxCode}}" type="text" class="form-control">
                            </div>

                            <label for="company-name">Company name (*):</label>
                            <div class="input-group mb-3">
                                <input id="company-name" name="companyName" value="{{$partner->companyName}}" type="text" class="form-control">
                            </div>

                            <label for="shortName">Short name:</label>
                            <div class="input-group mb-3">
                                <input id="shortName" name="shortName" value="{{$partner->shortName}}" type="text" class="form-control">
                            </div>

                            <label for="representativeName">Representative name:</label>
                            <div class="input-group mb-3">
                                <input id="representativeName" name="representativeName" value="{{$partner->representativeName}}" type="text" class="form-control">
                            </div>

                            <label for="address">Address:</label>
                            <div class="input-group mb-3">
                                <input id="address" name="address" value="{{$partner->address}}" type="text" class="form-control">
                            </div>

                            <label for="phone">Phone:</label>
                            <div class="input-group mb-3">
                                <input id="phone" name="phone" value="{{$partner->phone}}" type="text" class="form-control">
                            </div>

                            <label for="email">Email:</label>
                            <div class="input-group mb-3">
                                <input id="email" name="email" value="{{$partner->email}}" type="text" class="form-control">
                            </div>

                        </div> <!-- car-body-->
                    </div>
                </div><!-- col-md-4-->

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
                            <textarea name='note' id='desc'>
                                {{$partner->email}}
                            </textarea>
                        </div> <!-- car-body-->
                    </div>
                </div><!-- col-md-8-->
            </div>
        </div>
    </form>
</div>
<!-- /.content -->
@endsection

@push('scripts')
<script>
    $(document).ready(function() {
        $('.take-api').click(function(){
            var taxCode = $('#taxCode').val();
            axios.get('https://thongtindoanhnghiep.co/api/company/'+taxCode).then(function(response) {
                console.log(response);
            });
        });
    });

</script>
@endpush
