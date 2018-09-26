
<!DOCTYPE html>
<html style="margin-top: 0px !important;">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<?php bloginfo('charset')?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo THEME_IMG_URL ?>/favicon.ico">

    <!-- WP HEAD START -->
    <title>
        <?php
        wp_title('|', true,'right');
        bloginfo('name');
        ?>
    </title>
    <link rel="dns-prefetch" href="https://fonts.googleapis.com/">
    <link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
    <?php wp_head();?>
    <!-- WP HEAD END -->
</head>

<body class="woocommerce">

<!--MMenu-->
<div class="mobile-menu-block clearfix">
    <div class="mobile-menu-inner clearfix">
        <h4><img src="<?php echo THEME_IMG_URL ?>/logo.jpg" alt=""></h4>
        <nav class="mobile-nav">
        <?php dynamic_sidebar( 'primary-widget-area'); ?></div>
        </nav>
    </div>
</div>
<div class="menu-open-overlay">&nbsp;</div>

<!--Header Start-->
<header class="header">

    <div class="container">
        <div class="header-inner clearfix">
            <div class="logo">
                <?php include THEME_INC_DIR . '/logo.php';?>
            </div>

            <?php if(is_active_sidebar('before-menu-widget-area')):?>
                <?php dynamic_sidebar('before-menu-widget-area')?>
            <?php endif;?>

            <div class="header-right">

                <div class="header-search">
                    <span class="search-icon icon-round"><i class="ei ei-search2"></i></span>
                    <div class="search-block frmSearch">
                        <form role="search" method="get" class="search-form" action="<?php echo site_url(); ?>">
                            <input id="search-box" class="searchinput" placeholder="Search …" value="" name="s"
                                   type="search">
                            <input name="post_type" value="product" type="hidden">
                            <input id="gtduri" value="<?php echo THEME_URL ?>" type="hidden">
                        </form>
                        <div id="suggesstion-box"></div>
                    </div>

                    <div class="mobiview-search frmSearch">
                        <i class="ei ei-search2"></i>
                        <form role="search" method="get" class="search-form" action="<?php echo site_url(); ?>">
                            <input id="search-box" class="searchinput-mobiview" placeholder="Search …" value="" name="s" type="search">
                            <input name="post_type" value="product" type="hidden">
                        </form>
                    </div>
                </div>


                <?php include THEME_INC_DIR . '/cart_top.php';?>

                <!--Menu Icon-->
                <div class="icon-round menu-mobi-view">
                    <div class="menuicon mobilemenuicon">
                        <i class="ei ei-menu"></i><i class="ei ei-close"></i>
                    </div>
                </div>
            </div>

        </div>
    </div>



    <div class="nav-main center">
        <div class="container">
            <nav class="menu-product_cat_menu-container">
                <?php require_once THEME_INC_DIR . '/main-menu.php';?>
            </nav>

        </div>
    </div>

    <div class="search-block frmSearch">
        <form role="search" method="get" class="search-form" action="<?php echo site_url(); ?>">
            <input id="search-box" class="searchinput" placeholder="Search …" value="" name="s" type="search">
            <input name="post_type" value="product" type="hidden">
        </form>
        <div id="suggesstion-box"></div>
    </div>

    <div class="mobiview-search frmSearch">
        <i class="ei ei-search2"></i>
        <form role="search" method="get" class="search-form" action="<?php echo site_url(); ?>">
            <input id="search-box" class="searchinput-mobiview" placeholder="Search …" value="" name="s" type="search">
            <input name="post_type" value="product" type="hidden">
        </form>
        <div id="suggesstion-box"></div>
    </div>

</header>
<!--Header End-->