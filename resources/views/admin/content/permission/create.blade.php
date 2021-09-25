@extends('admin.admin-master')

@section('title', 'content')

@section('content')
 <!-- Content Header (Page header) -->
 <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Permisson</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Permisson</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <div class="content">
    <form method="POST" action="{{route('permissions.store')}}">
        @csrf
        <div class="card card-outline card-info mx-3">
            <div class="card-header">
                <h3 class="card-title">New permission</h3>
                <div class="card-tools">
                    <!-- Buttons, labels, and many other things can be placed here! -->
                    <!-- Here is a label for example -->
                    <button type="submit" class="btn btn-success btn-sm"><i class="fas fa-check-square"></i> Apply / Save</button>
                    <button type="button" class="btn btn-light btn-sm exit" data-url="{{route('permissions.index')}}"><i class="fas fa-sign-out-alt"></i> Exit</button>
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
                            <label for="permission-name">Permisson name (*):</label>
                            <div class="input-group mb-3">
                                <input id="permission-name" name="name" value="{{old('name')}}" type="text" class="form-control">
                            </div>

                            <label for="cate_id">Role:</label>
                            <div class="input-group mb-3">
                                <select class="custom-select form-control" id="role_id" name="role_id">
                                    <option value="4">Choose...</option>
                                    @foreach($roles as $item)
                                    <option value="{{$item->id}}" {{old ('role_id') == $item->id ? 'selected' : ''}}>{{$item->name}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <label for="cate_id">Action:</label>
                            <div class="input-group mb-3">
                                <select class="custom-select form-control" id="action" name="action">
                                    <?php 
                                        $action = ['view' => 'View', 'create' => 'Create', 'update' => 'Update' ,'delete' => 'Delete'];    
                                    ?>
                                    @foreach($action as $key => $value)
                                        <option value="{{$key}}" {{old ('action') == $key ? 'selected' : ''}}>{{$value}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <label for="cate_id">Model:</label>
                            <div class="input-group mb-3">
                                <select class="custom-select form-control" id="model" name="model">
                                    @foreach($models as $model)
                                        <option value="{{$model->classname}}">{{$model->classname}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <label for="cate_id">Allow:</label>
                            <div class="input-group mb-3">
                                <select class="custom-select form-control" id="allow" name="allow">
                                        <option value="0">Deny</option>
                                        <option value="1">Allow</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </form>
  </div>
  <!-- /.content -->
@endsection