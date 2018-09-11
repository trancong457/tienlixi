
jQuery.noConflict();
jQuery(document).ready(function($){

    _init = {
        init: function () {
            _init.test()
        },
        test: function () {
            //alert('haha');
        },
    }

    $(document).ready(_init.init);

});