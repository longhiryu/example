require('./bootstrap');
var $ = require('jquery');
var jQuery = require('jquery');
// Toastr
window.toastr = require('toastr');
toastr.options = {
    "closeButton": false,
    "debug": false,
    "newestOnTop": false,
    "progressBar": false,
    "positionClass": "toast-bottom-right",
    "preventDuplicates": false,
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
  }

//Jquery UI
import 'jquery-ui-dist/jquery-ui';

// DataTables
import 'datatables.net/js/jquery.dataTables.min';


import '@fortawesome/fontawesome-free/js/all.js';

//admin-lte
import 'admin-lte/dist/js/adminlte';

//jqeury confirm
import 'jquery-confirm/js/jquery-confirm';

//amdin script
import './admin';
