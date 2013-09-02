/**
 * Created with JetBrains RubyMine.
 * User: go7hic
 * Date: 9/2/13
 * Time: 17:57
 * To change this template use File | Settings | File Templates.
 */


if (typeof(CKEDITOR) != 'undefined') {
    CKEDITOR.editorConfig = function( config )
    {
        // Define changes to default configuration here. For example:
        config.language = 'ru';
//        config.uiColor = '#AADC6E';

        // Rails CSRF token
        config.filebrowserParams = function(){
            var csrf_token = $('meta[name=csrf-token]').attr('content'),
                csrf_param = $('meta[name=csrf-param]').attr('content'),
                params = new Object();

            if (csrf_param !== undefined && csrf_token !== undefined) {
                params[csrf_param] = csrf_token;
            }

            return params;
        };

        /* Extra plugins */
        // works only with en, ru, uk locales

        /* Toolbars */
        config.toolbar = 'Easy';

        config.toolbar_Easy =
            [
                ['Bold','Italic','Strike'],
                ['BulletedList','NumberedList','Blockquote'],
                ['JustifyLeft','JustifyCenter','JustifyRight'],
                ['Link','Unlink'],
                ['Subscript', 'Superscript'],
                ['Image', 'Attachment', 'Flash', 'Embed'],
                ['YahooMaps', 'Dictionary'],
                '/',
                ['Format'],
                ['Underline', 'JustifyBlock', 'TextColor'],
                ['PasteText','PasteFromWord','RemoveFormat'],
                ['SpecialChar'],
                ['Outdent','Indent'],
                ['Undo','Redo'],
                ['Source']
            ];
    };
}