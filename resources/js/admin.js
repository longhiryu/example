import $, { data } from 'jquery'; //datatables
import dt from 'datatables.net'; // datatables
$(document).ready(function () {
    $('#table-list').DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": {
            url: dataUrl(),
        },
        language: dataTablesLanguage(),
        columns: columns(),
        drawCallback: function( settings ) {
            $("button[name=delete]").click(function () {
                var link = $(this).attr('data-link');
                var button = $(this);
                $.confirm({ // Jquery confirm
                    title: 'Delete confirm!',
                    content: 'Do you want to delete this?',
                    type: 'red',
                    buttons: {
                        ok: {
                            text: "Yes, delete this!",
                            btnClass: 'btn-danger',
                            action: function(){
                                axios.delete(link).then(function (response) {    
                                    $(button).parent().parent().fadeOut(900);
                                    toastr.error('You have deleted the record!');
                                    console.log(response);
                                });
                            }
                        },
                        cancel: function(){
                            toastr.success('OK! Just relax!');
                        }
                    }
                });
            });
        }
    });


});

function dataTablesLanguage() {
    var lang = {
    processing: "loading...",
    search: "Tìm kiếm",
    lengthMenu: "hiển thị _MENU_ ",
    info: "Bản ghi từ _START_ đến _END_ Tổng công _TOTAL_ bản ghi",
    infoEmpty: "Không có dữ liệu! Đang hiển thị 0 bản ghi trong 0 tổng cộng 0 ",
    infoFiltered: "(Message bổ sung cho info khi không search đc record nào _MAX_)",
    infoPostFix: "", // Cái này khi thêm vào nó sẽ đứng sau info
    loadingRecords: "",
    zeroRecords: "Không tìm thấy dữ liệu!",
    emptyTable: "Không có dữ liệu",
    paginate: {
        first: "Trang đầu",
        previous: "Trang trước",
        next: "Trang sau",
        last: "Trang cuối"
    },
    aria: {
        sortAscending: ": Message khi đang sắp xếp theo column",
        sortDescending: ": Message khi đang sắp xếp theo column",
    }
    };

    return lang;
}