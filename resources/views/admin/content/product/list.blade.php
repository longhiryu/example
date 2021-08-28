@extends('admin.admin-master')

@section('title', 'Product list')

@section('content')
 <!-- Content Header (Page header) -->
 <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Product list</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Product list</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <div class="content">
    <div class="card card-outline card-info">
      <div class="card-body">
        <table id="table-list" class="styled-table">
          <thead>
              <tr>
                  <th>ID</th></th>
                  <th>SKU</th>
                  <th>Name</th>
                  <th>Price</th>
                  <th>Cate ID</th>
                  <th>Image</th>
                  <th>Enable</th>
                  <th>Feature</th>
                  <th>Action</th>
              </tr>
          </thead>
          <tbody>
          <tr class="odd">
               <th>ID</th>
               <th>SKU</th>
               <th>Name</th>
               <th>Price</th>
               <th>Cate ID</th>
               <th>Image</th>
               <th>Enable</th>
               <th>Feature</th>
               <th>Action</th>
          </tr>
          </tbody>
      </table>
      </div>
      <!-- /.card-body -->
    </div> 
  </div>
  <!-- /.content -->
@endsection

@push('scripts')
    <script>
      function dataUrl() {
        var url = '/admin/datatables/products';
        return url;
      }
      function columns() {
        var columns = [
            {data: "id"},
            {data: "sku"},
            {data: "name"},
            {data: "price"},
            {data: "cate_id"},
            {data: "img"},
            {data: "enable"},
            {data: "feature"},
            {data: "action"}
        ];
        return columns;
      }
    </script>
@endpush