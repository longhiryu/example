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
        </div>
    </body>
    <!-- Scripts -->
    <script src="{{asset('js/app.js')}}"></script>
    <script>
        $(document).ready(function () {
        });
    </script>
</html>
