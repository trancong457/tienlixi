
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
            <ul id="menu-product_cat_menu" class="clearfix">
                <li id="menu-item-38" class=""><a href="#">Trang chủ</a></li>
                <li id=" menu-item-36"><a href="#">Tiền lì xì tết 2019</a></li>
                <li id="menu-item-283" class=""><a href="#">2 usd con heo</a></li>
                <li id="menu-item-283" class=""><a href="#">Tin tức</a></li>
                <li id="menu-item-283" class=""><a href="#">Liên Hệ</a></li>
            </ul>
        </nav>
    </div>
</div>
<div class="menu-open-overlay">&nbsp;</div>

<!--Header Start-->
<header class="header">

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
    <div class="nav-main center">
        <div class="container">
            <div class="logo">
                <a href="<?php echo site_url(); ?>" title="New Year Money"><img src="<?php echo THEME_IMG_URL ?>/logo.jpg" alt="" style="width: 123px;"></a>
            </div>
            <nav class="menu-product_cat_menu-container">
                <!--
                <ul id="menu-product_cat_menu-1" class="clearfix">
                    <li class=""><a href="#">Trang Chủ</a></li>
                    <li class=""><a href="#">Giới thiệu</a></li>
                    <li class=""><a href="#">Tiền lì xì tết 2019</a></li>
                    <li class=""><a href="#">2 USD con Heo</a></li>
                    <li class=""><a href="#">Tin Tức</a></li>
                    <li class=""><a href="#">Liên Hệ</a></li>
                </ul>
                -->
                <?php require_once THEME_INC_DIR . '/main-menu.php';?>
            </nav>
        </div>
    </div>

    <div class="search-block frmSearch">
        <form role="search" method="get" class="search-form" action="">
            <input type="search" id="search-box" class="searchinput" placeholder="Search …" value="" name="s">
            <input type="hidden" name="post_type[]" value="product">
            <input type="hidden" id="gtduri" value="">
        </form>
        <div id="suggesstion-box"></div>
    </div>

    <div class="mobiview-search frmSearch">
        <i class="ei ei-search2"></i>
        <form role="search" method="get" class="search-form" action="https://newyearmoney.com/">
            <input type="search" id="search-box" class="searchinput-mobiview" placeholder="Search …" value="" name="s">
            <input type="hidden" name="post_type[]" value="product">
            <input type="hidden" id="gtduri" value="#">
        </form>
        <div id="suggesstion-box"></div>


        <!--Menu Icon-->
        <div class="icon-round menu-mobi-view">
            <div class="menuicon mobilemenuicon">
                <i class="ei ei-menu">menu_mobile</i><i class="ei ei-close"></i>
            </div>
        </div>

    </div>
</header>
<!--Header End-->