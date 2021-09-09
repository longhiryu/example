    $(document).ready(function(){
        $('.iframe-btn').fancybox({
		'width'   : 880,
		'height'  : 570,
		'type'    : 'iframe',
		'autoScale'   : false
		});

        $("[data-fancybox]").fancybox({
            iframe : {
                css : {
                    width : '880px',
                    height: '550px',
                    autoScale: true
                }
            }
        });

        if($("#desc").length){
            CKEDITOR.replace('desc',{
                filebrowserBrowseUrl : '../../../plugins/filemanager/dialog.php?type=1&editor=ckeditor&fldr=',
                filebrowserUploadUrl : '../../../plugins/filemanager/dialog.php?type=1&editor=ckeditor&fldr=',
                filebrowserImageBrowseUrl : '../../../plugins/filemanager/dialog.php?type=1&editor=ckeditor&fldr=',
            
                toolbar: [
                { name: 'document', groups: [ 'mode', 'document', 'doctools' ], items: [ 'Source', '-', 'ExportPdf', 'Print' ] },
                { name: 'clipboard', groups: [ 'clipboard', 'undo' ], items: [ 'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord' ] },
                { name: 'editing', groups: [ 'find', 'selection', 'spellchecker' ], items: [ 'Find', 'Replace', '-', 'SelectAll', '-', 'Scayt' ] },
                '/',
                { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ], items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'CopyFormatting', 'RemoveFormat' ] },
                { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ], items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl' ] },
                { name: 'links', items: [ 'Link', 'Unlink', 'Anchor' ] },
                { name: 'insert', items: [ 'Image', 'Table', 'HorizontalRule', 'SpecialChar', 'PageBreak' ] },
                '/',
                { name: 'styles', items: [ 'Styles', 'Format', 'Font', 'FontSize' ] },
                { name: 'colors', items: [ 'TextColor', 'BGColor' ] },
                { name: 'tools', items: [ 'Maximize', 'ShowBlocks' ] },
                { name: 'others', items: [ '-' ] }
                //{ name: 'about', items: [ 'About' ] }
                ]
            });
        }
    });

    function responsive_filemanager_callback(field_id){
        //console.log(field_id);
        var url=jQuery('#'+field_id).val();
        var imgURL = url.replace(/https?:\/\/[^\/]+/i, "");
        //alert(imgURL);
        //alert('update '+field_id+" with "+url);
        //var src = $("image."+field_id).attr('src');
        $("img#view-img").attr('src', url);
        //alert(src);
        $('input#'+field_id).val(imgURL);
    }