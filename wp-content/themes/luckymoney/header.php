
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
    <!--
    <div class="header-top clearfix">
        <div class="header-links pull-left">
            <div class="menu-top_menu-container">
                <ul id="menu-top_menu-1" class="nav-links">
                    <li class=""><a href="#">Trang chủ</a></li>
                    <li class=""><a href="#">Tin Tức</a></li>
                    <li class=""><a href="#">Liên Hệ</a></li>
                </ul>
            </div>
        </div>
        <div class="header-tags pull-right">
            <ul class="nav-links tag-list">
                <li><em>Tiền lì xì tết 2019</em></li>
                <li><em>Giỏ hàng</em></li>
            </ul>
        </div>
    </div>
    -->
    <div class="nav-main center">
        <div class="container">
            <div class="logo">
                <?php include THEME_INC_DIR . '/logo.php';?>
            </div>
            <nav class="menu-product_cat_menu-container">
                <?php require_once THEME_INC_DIR . '/main-menu.php';?>
            </nav>

        </div>
    </div>


    <div class="mobiview-search frmSearch clearfix">

        <?php include THEME_INC_DIR . '/logo.php';?>

        <!--Menu Icon-->
        <div class="icon-round menu-mobi-view">
            <div class="menuicon mobilemenuicon">
                <i class="ei ei-menu"></i><i class="ei ei-close"></i>
            </div>
        </div>

        <div class="icon-round menu-mobi-view">

            <div class="menuicon  menu_icon_mobile_cart">
                <?php include THEME_INC_DIR . '/cart_top.php';?>
            </div>

        </div>

    </div>
</header>
<!--Header End-->