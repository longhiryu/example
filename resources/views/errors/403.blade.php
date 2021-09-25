@extends('admin.admin-master')

@section('title', '403 | FORBIDDEN')

@section('content')
<div class="container py-5 pt-5">
  <div class="row">
       <div class="col-md-2 text-center">
            <p><i class="fa fa-exclamation-triangle fa-5x"></i><br/>Status Code: 403</p>
       </div>
       <div class="col-md-10">
            <h3>OPPSSS!!!! Sorry...</h3>
            <p>Bạn không có quyền truy cập nội dung này, nguyên nhân có thể là một trong những trường hợp dưới đây:
                <ul>
                     <li>Bạn chưa được cấp quyền truy cập.</li>
                     <li>Bạn không phải là tác giả của nội dung này.</li>
                     <li>Nếu bạn tin rằng đây là lỗi hệ thống. Vui lòng liên hệ Quản trị viên đễ được hỗ trợ!</li>
                </ul>
               <br/>
            <a class="btn btn-danger" href="javascript:history.back()">Trở lại</a>
       </div>
  </div>
</div>
@endsection