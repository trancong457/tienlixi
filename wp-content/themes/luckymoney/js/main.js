
jQuery.noConflict();
jQuery(document).ready(function($){

    /*_init = {
        init: function () {
            _init.test()
        },
        test: function () {
            //alert('haha');
        },
    }
    $(document).ready(_init.init);
    */

    //Moble Menu Script
    jQuery(".mobilemenuicon").click(function(){
        jQuery(this).toggleClass('opened');
        jQuery("body").toggleClass("mobile-menu-open");
    });
    jQuery(".menu-open-overlay").click(function(){
        jQuery(".mobilemenuicon").removeClass('opened');
        jQuery("body").removeClass("mobile-menu-open");
    });

    /* scroll bottom to top */
    if (jQuery(this).scrollTop() > 200) {
        jQuery('.scrollup').fadeIn();
    } else {
        jQuery('.scrollup').fadeOut();
    }
    jQuery(window).scroll(function () {
        if (jQuery(this).scrollTop() > 200) {
            jQuery('.scrollup').fadeIn();
        } else {
            jQuery('.scrollup').fadeOut();
        }
    });
    jQuery('.scrollup').click(function () {
        jQuery("html, body").animate({
            scrollTop: 0
        }, 600);
        return false;
    });


    jQuery('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        dots: false,
        asNavFor: '.slider-nav'
    });
    jQuery('.slider-nav').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        centerMode: true,
        centerPadding: '0',
        focusOnSelect: true,
        responsive: [
            {
                breakpoint: 479,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            }
        ]
    });



    //Slider1
    jQuery('.slider1').slick({
        dots: true,
        infinite: true,
        speed: 300,
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1023,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 479,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });


    //Home Slider
    jQuery('.homeslick').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        fade: true,
        dots: true
    });

});