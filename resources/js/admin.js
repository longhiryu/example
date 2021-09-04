import $, { data } from 'jquery'; //datatables
import dt from 'datatables.net'; // datatables

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

    $('.logout').click(function(){
        $.confirm({ // Jquery confirm
            title: 'Logout confirm!'
            , content: 'Do you want to logout?'
            , type: 'red'
            , buttons: {
                ok: {
                    text: "Yes, logout!"
                    , btnClass: 'btn-danger'
                    , action: function() {
                        axios.post('/logout').then(function(response) {
                            console.log(response);
                            window.location.href = '/login';
                        });
                    }
                }
                , cancel: function() {
                    toastr.success('OK! Just relax!');
                }
            }
        });// Jquery confirm
    });
});

