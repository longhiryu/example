@extends('admin.admin-master')

@section('title', '403 | FORBIDDEN')

@section('content')
 <!-- Content Header (Page header) -->
 <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0"></h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">403 | FORBIDDEN</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <style>
      .center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}
  </style>
  <div class="content">
            <h1 class="center text-center text-danger">403 | FORBIDDEN</h1><br/>
            <h5 class="center text-center text-info">YOU SHOULD GO BACK or you can buy some condoms <br/>(DUREX is RECOMMENTED)</h5><br/>
            <img class="center" src="{{asset('images/403.png')}}" />
  </div>
  <!-- /.content -->
@endsection