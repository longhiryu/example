@extends('admin.admin-master')

@section('title', 'Account create')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Account create:</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Account Page</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <form method="POST" action="{{route('accounts.store')}}">
        @csrf
        <div class="card card-outline card-info mx-3">
            <div class="card-header">
                <h3 class="card-title">New account</h3>
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
                            <label for="account-name">Account name (*):</label>
                            <div class="input-group mb-3">
                                <input id="account-name" name="name" value="{{old('name')}}" type="text" class="form-control">
                            </div>

                            <label for="cate_id">Type:</label>
                            <div class="input-group mb-3">
                                <select class="custom-select form-control" id="type" name="type">
                                    <option value="cash">Cash</option>
                                    <option value="bank">Bank</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <label class="form-check-label mb-3" for="desc">
                                Note:
                            </label>
                            <textarea name='note' id='desc'>
                                {{old('note')}}
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