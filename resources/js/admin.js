

$(document).ready(function () {
   
    $('button.exit').click(function(){
        var url = $(this).attr('data-url');
        $.confirm({ // Jquery confirm
            title: 'Exit confirm!'
            , content: 'Are you want to exit this page?'
            , type: 'red'
            , buttons: {
                ok: {
                    text: "Yes, exit!"
                    , btnClass: 'btn-danger'
                    , action: function() {
                        window.location.href = url;
                    }
                }
                , cancel: function() {
                    toastr.success('OK! Just relax!');
                }
            }
        });// Jquery confirm
    });
});

