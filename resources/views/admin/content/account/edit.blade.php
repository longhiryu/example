@extends('admin.admin-master')

@section('title', 'Account edit')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Account edit: {{$data->name}}</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="{{route('accounts.index')}}">Account Page</a></li>
                    <li class="breadcrumb-item active">{{$data->name}}</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <form method="POST" action="{{route('accounts.update',$data->id)}}">
        @method('PUT')
        @csrf
        <div class="card card-outline card-info mx-3">
            <div class="card-header">
                <h3 class="card-title">{{$data->name}}</h3>
                <div class="card-tools">
                    <!-- Buttons, labels, and many other things can be placed here! -->
                    <!-- Here is a label for example -->
                    <button type="submit" class="btn btn-success btn-sm"><i class="fas fa-check-square"></i> Apply / Save</button>
                    <button type="button" class="btn btn-light btn-sm exit" data-url="{{route('accounts.index')}}"><i class="fas fa-sign-out-alt"></i> Exit</button>
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
                            <label for="account-name">Account name: </label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                </div>
                                <input disabled id="account-name" value="{{$data->name}}" type="text" class="form-control">
                            </div>


                            <label for="type">Type:</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                </div>
                                <select disabled class="custom-select form-control" id="type" name="type">
                                    <option value="cash" {{($data->type == 'cash')? 'selected': null}}>Cash</option>
                                    <option value="bank" {{($data->type == 'bank')? 'selected': null}}>Bank</option>
                                </select>
                            </div>

                            <label for="account-name">Value:</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                </div>
                                <input disabled id="account-value" value="{{number_format($data->value,0,',','.')}}" type="text" class="form-control text-right">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <label class="form-check-label mb-3" for="desc">
                                Note:
                            </label>
                            <textarea name='note' id='desc'>
                                {{$data->note}}
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
            
        });
    </script>
@endpush