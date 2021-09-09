<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title')</title>
    <!-- Fonts -->
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <!-- Styles -->
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="{{asset('./plugins/fancybox-master/dist/jquery.fancybox.min.css')}}" />
    <link rel="stylesheet" href="{{asset('./plugins/EasyAutocomplete/easy-autocomplete.min.css')}}" />
    <style>
        body {
            font-family: 'Nunito';
        }

    </style>
</head>
<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        @include('admin/include/navbar')
        @include('admin/include/sidebar')
        <div class="content-wrapper">
            @yield('content')
        </div>
        <footer class="main-footer">
            <!-- To the right -->
            <div class="float-right d-none d-sm-inline">
                Anything you want
            </div>
            <!-- Default to the left -->
            <strong>Copyright © 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
        </footer>
    </div>
</body>
<!-- Scripts -->
<script src="{{asset('js/app.js')}}"></script>
<script src="{{asset('plugins/EasyAutocomplete/jquery.easy-autocomplete.min.js')}}"></script>
<script src="{{asset('plugins/ckeditor/ckeditor.js')}}"></script>
<script src="{{asset('plugins/fancybox-master/dist/jquery.fancybox.min.js')}}"></script>
<script src="{{asset('plugins/ckeditor/custom.js')}}">
    // Custom code for CKEditor

</script>
@stack('scripts')
</html>
