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
                </thead>
                <tbody>

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
    // Setup - add a text input to each footer cell
    $('#table-list thead tr').clone(true).addClass('filters').appendTo('#table-list thead');
    var table = $('#table-list').DataTable({
        orderCellsTop: true
        , fixedHeader: true
        , "processing": true
        , "serverSide": true
        , "ajax": {
            url: dataUrl()
        , }
        , language: dataTablesLanguage()
        , columns: columns()
        , columnDefs: columnDefs()
        , drawCallback: function(settings) {
            $('.enable').on('click', function() {
                var link = $(this).attr('data-link');
                var icon = $(this)
                axios.get(link).then(function(response) {
                    toastr.success('You have updated the record!');
                    var id = response.data.id;
                    table.ajax.reload(null, false); // reload table at the current page
                    console.log(response);
                });
            });
            $("button[name=delete]").click(function() {
                var link = $(this).attr('data-link');
                var button = $(this);
                $.confirm({ // Jquery confirm
                    title: 'Delete confirm!'
                    , content: 'Do you want to delete this?'
                    , type: 'red'
                    , buttons: {
                        ok: {
                            text: "Yes, delete this!"
                            , btnClass: 'btn-danger'
                            , action: function() {
                                axios.delete(link).then(function(response) {
                                    $(button).parent().parent().fadeOut(900);
                                    toastr.error('You have deleted the record!');
                                    console.log(response);
                                });
                            }
                        }
                        , cancel: function() {
                            toastr.success('OK! Just relax!');
                        }
                    }
                });// Jquery confirm
            });
        }
    });
    table.columns().eq(0).each(function(colIdx) {
        var cell = $('.filters th').eq($(table.column(colIdx).header()).index());
        console.log(cell);
        var title = $(cell).text();
        $(cell).html('<input type="text" placeholder="Search ' + title + '" />');
        $('input', $('.filters th').eq($(table.column(colIdx).header()).index())).off('keyup change').on('keyup change', function(e) {
            e.stopPropagation();
            $(this).attr('title', $(this).val());
            var regexr = '({search})'; //$(this).parents('th').find('select').val();
            table
                .column(colIdx)
                .search((this.value != "") ? regexr.replace('{search}', '(((' + this.value + ')))') : "", this.value != "", this.value == "")
                .draw();
        });
        $('select', $('.filters th').eq($(table.column(colIdx).header()).index())).off('change').on('change', function() {
            $(this).parents('th').find('input').trigger('change');
        });
    });
    function dataUrl() {
        var url = '/admin/datatables/products';
        return url;
    }
    function columns() {
        var columns = [{
                data: "id"
                , className: "text-center"
            }
            , {
                data: "sku"
                , className: "text-center"
            }
            , {
                data: "name"
            }
            , {
                data: "price"
                , className: "text-right"
            }
            , {
                data: "cate_id"
                , className: "text-center"
            }
            , {
                data: "img"
            }
            , {
                data: "enable"
                , className: "text-center"
            }
            , {
                data: "feature"
                , className: "text-center"
            }
            , {
                data: "action"
                , className: "text-center"
            }
        ];
        return columns;
    }
    function columnDefs() {
        var result = [{
            targets: [2, 5]
            , class: "nowrap"
        }]
        return result;
    }
    function dataTablesLanguage() {
    var lang = {
    processing: "loading...",
    search: "T??m ki???m",
    lengthMenu: "hi???n th??? _MENU_ ",
    info: "B???n ghi t??? _START_ ?????n _END_ T???ng c??ng _TOTAL_ b???n ghi",
    infoEmpty: "Kh??ng c?? d??? li???u! ??ang hi???n th??? 0 b???n ghi trong 0 t???ng c???ng 0 ",
    infoFiltered: "(Message b??? sung cho info khi kh??ng search ??c record n??o _MAX_)",
    infoPostFix: "", // C??i n??y khi th??m v??o n?? s??? ?????ng sau info
    loadingRecords: "",
    zeroRecords: "Kh??ng t??m th???y d??? li???u!",
    emptyTable: "Kh??ng c?? d??? li???u",
    paginate: {
        first: "Trang ?????u",
        previous: "Trang tr?????c",
        next: "Trang sau",
        last: "Trang cu???i"
    },
    aria: {
        sortAscending: ": Message khi ??ang s???p x???p theo column",
        sortDescending: ": Message khi ??ang s???p x???p theo column",
    }
    };
    return lang;
}
</script>
@endpush