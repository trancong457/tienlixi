<?php get_header();?>

<?php require_once THEME_INC_DIR . '/top-widget-area.php';?>

<?php require_once THEME_INC_DIR . '/home_banner.php';?>


<?php
$params = array('posts_per_page' => 5, 'post_type' => 'product');
$wc_query = new WP_Query($params);
?>
<?php if ($wc_query->have_posts()) : ?>
    <?php while ($wc_query->have_posts()) :
        $wc_query->the_post(); ?>

       <a href="<?php the_permalink()  ?>"> <?php the_title(); ?></a>
    <?php endwhile; ?>
    <?php wp_reset_postdata(); ?>
<?php else:  ?>
    <p>
        <?php _e( 'No Products'); ?>
    </p>
<?php endif; ?>


<?php woocommerce_content(); ?>

<!-- Page Content -->
<div class="middle-section">
    <!--Section1-->
    <div class="section1 padding-80">
        <div class="container">
            <div class="intro-text center">
                <h1>Tiền lì xì tết <span> 2019</span></h1>
                <p>2019 Year of the Dog is a remarkable and valued year for all. Repeated once every 60 years in the
                    Chinese calendar, the Year of the Earth Dog is occupying the 11th position in the Chinese Zodiac.
                    The Dog symbolizes such character traits as generous, intelligent, honest and responsible. The
                    Chinese New Year 2018 starts on February 16, 2018 up to February 4, 2019. Year of the Dog Lucky
                    Numbers are 3, 4 and 9, and Lucky Colors are red, green and purple.</p>
                <p><a class="btn" href="http://newyearmoney.com/product-category/golden-holograms-bills/"><span
                                data-hover="Mua Ngay">Mua Ngay</span></a></p>
            </div>
        </div>
    </div>

    <!--Section2-->
    <div class="section2 padding-top-80">
        <div class="container">
            <div class="intro-text center">
                <h2>Các sản phẩm tiền lì xì tết</h2>
                <p>This product uses <em>Exclusive Security Imaging</em> in an alternating pattern, using a C-Thru
                    Vision Hologram embedded in multiple locations, giving the 2018 Year of the Dog Currency its
                    Official Genuine Distinction.</p>
            </div>
            <div class="section-inner center clearfix">
                <div class="slider1 clearfix slick-initialized slick-slider slick-dotted" role="toolbar">
                    <button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous"
                            role="button" style="display: block;">Previous
                    </button>

                    <div aria-live="polite" class="slick-list draggable">
                        <div class="slick-track" role="listbox"
                             style="opacity: 1; width: 4560px; transform: translate3d(-3040px, 0px, 0px);">
                            <div class="col-3 slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true"
                                 tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-1-lucky-money-with-red-envelope/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_mockENV_1bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-1-lucky-money-with-red-envelope/"
                                               tabindex="-1">Sản phẩm 1</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true"
                                 tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-2-lucky-money-with-red-envelope/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_mockENV_2bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-2-lucky-money-with-red-envelope/"
                                               tabindex="-1">Sản phẩm 2</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true"
                                 tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-10-bill-limited-numbered-of-88/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-10-bill-limited-numbered-of-88/"
                                               tabindex="-1">Sản phẩm 3</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide" data-slick-index="0" aria-hidden="true" tabindex="-1"
                                 role="option" aria-describedby="slick-slide00" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-with-blue-folio/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_Folio_2bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-with-blue-folio/"
                                               tabindex="-1">Sản phẩm 1</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide" data-slick-index="1" aria-hidden="true" tabindex="-1"
                                 role="option" aria-describedby="slick-slide01" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-blue-folio/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_Folio_1bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-blue-folio/"
                                               tabindex="-1">Tên Sản Phẩm</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide" data-slick-index="2" aria-hidden="true" tabindex="-1"
                                 role="option" aria-describedby="slick-slide02" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-year-of-the-dog-12-lunar-new-year-set-dual-8s-gold-dogs-in-red-envelope-ltd-8888-sets/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-year-of-the-dog-12-lunar-new-year-set-dual-8s-gold-dogs-in-red-envelope-ltd-8888-sets/"
                                               tabindex="-1">2018 YEAR OF THE DOG $1/$2 Lunar New Year Set – DUAL 8’s
                                                GOLD DOG’s in Red Envelope Ltd. 8,888 Sets</a></p>
                                        <span class="price">$19.95</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide" data-slick-index="3" aria-hidden="true" tabindex="-1"
                                 role="option" aria-describedby="slick-slide03" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-1-lucky-money-with-red-envelope/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_mockENV_1bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-1-lucky-money-with-red-envelope/"
                                               tabindex="-1">2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram
                                                Legal Tender U.S. $1 BILL with Red Envelope</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide" data-slick-index="4" aria-hidden="true" tabindex="-1"
                                 role="option" aria-describedby="slick-slide04" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-2-lucky-money-with-red-envelope/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_mockENV_2bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-2-lucky-money-with-red-envelope/"
                                               tabindex="-1">2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram
                                                Legal Tender U.S. $2 BILL with Red Envelope</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-current slick-active" data-slick-index="5"
                                 aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide05"
                                 style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-10-bill-limited-numbered-of-88/"
                                       tabindex="0">
                                        <img src="<?php echo THEME_IMG_URL ?>/Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-10-bill-limited-numbered-of-88/"
                                               tabindex="0">Tên Sản Phẩm</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-cloned slick-active" data-slick-index="6"
                                 aria-hidden="false" tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-with-blue-folio/"
                                       tabindex="0">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_Folio_2bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-with-blue-folio/"
                                               tabindex="0">Tên Sản Phẩm</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-cloned slick-active" data-slick-index="7"
                                 aria-hidden="false" tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-blue-folio/"
                                       tabindex="0">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_Folio_1bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-blue-folio/"
                                               tabindex="0">Tên Sản Phẩm</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-cloned" data-slick-index="8" aria-hidden="true"
                                 tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-year-of-the-dog-12-lunar-new-year-set-dual-8s-gold-dogs-in-red-envelope-ltd-8888-sets/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-year-of-the-dog-12-lunar-new-year-set-dual-8s-gold-dogs-in-red-envelope-ltd-8888-sets/"
                                               tabindex="-1">2018 YEAR OF THE DOG $1/$2 Lunar New Year Set – DUAL 8’s
                                                GOLD DOG’s in Red Envelope Ltd. 8,888 Sets</a></p>
                                        <span class="price">$19.95</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next"
                            role="button" style="display: block;">Next
                    </button>
                    <ul class="slick-dots" style="display: block;" role="tablist">
                        <li class="" aria-hidden="true" role="presentation" aria-selected="true"
                            aria-controls="navigation00" id="slick-slide00">
                            <button type="button" data-role="none" role="button" tabindex="0">1</button>
                        </li>
                        <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation01"
                            id="slick-slide01" class="">
                            <button type="button" data-role="none" role="button" tabindex="0">2</button>
                        </li>
                        <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation02"
                            id="slick-slide02" class="">
                            <button type="button" data-role="none" role="button" tabindex="0">3</button>
                        </li>
                        <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation03"
                            id="slick-slide03" class="">
                            <button type="button" data-role="none" role="button" tabindex="0">4</button>
                        </li>
                        <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation04"
                            id="slick-slide04" class="">
                            <button type="button" data-role="none" role="button" tabindex="0">5</button>
                        </li>
                        <li aria-hidden="false" role="presentation" aria-selected="false" aria-controls="navigation05"
                            id="slick-slide05" class="slick-active">
                            <button type="button" data-role="none" role="button" tabindex="0">6</button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!--Section3-->
    <div class="section3 padding-top-80">
        <div class="container">
            <div class="intro-text center">
                <h2>Các sản phẩm 2 USD con heo</h2>
                <p>This New Year, give a gift of good fortune to family and friends with the Famous<br>
                    Golden Hologram 2018 Chinese New Year Dog Bills.</p>
            </div>
            <div class="section-inner center clearfix">
                <div class="slider1 clearfix slick-initialized slick-slider slick-dotted" role="toolbar">
                    <button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous"
                            role="button" style="display: block;">Previous
                    </button>
                    <div aria-live="polite" class="slick-list draggable">
                        <div class="slick-track" role="listbox"
                             style="opacity: 1; width: 4560px; transform: translate3d(-3040px, 0px, 0px);">
                            <div class="col-3 slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true"
                                 tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-1-lucky-money-with-red-envelope/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_mockENV_1bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-1-lucky-money-with-red-envelope/"
                                               tabindex="-1">Sản phẩm 1</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true"
                                 tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-2-lucky-money-with-red-envelope/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_mockENV_2bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-2-lucky-money-with-red-envelope/"
                                               tabindex="-1">Sản phẩm 2</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true"
                                 tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-10-bill-limited-numbered-of-88/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-10-bill-limited-numbered-of-88/"
                                               tabindex="-1">Sản phẩm 3</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide" data-slick-index="0" aria-hidden="true" tabindex="-1"
                                 role="option" aria-describedby="slick-slide00" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-with-blue-folio/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_Folio_2bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-with-blue-folio/"
                                               tabindex="-1">Sản phẩm 1</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide" data-slick-index="1" aria-hidden="true" tabindex="-1"
                                 role="option" aria-describedby="slick-slide01" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-blue-folio/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_Folio_1bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-blue-folio/"
                                               tabindex="-1">Tên Sản Phẩm</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide" data-slick-index="2" aria-hidden="true" tabindex="-1"
                                 role="option" aria-describedby="slick-slide02" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-year-of-the-dog-12-lunar-new-year-set-dual-8s-gold-dogs-in-red-envelope-ltd-8888-sets/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-year-of-the-dog-12-lunar-new-year-set-dual-8s-gold-dogs-in-red-envelope-ltd-8888-sets/"
                                               tabindex="-1">2018 YEAR OF THE DOG $1/$2 Lunar New Year Set – DUAL 8’s
                                                GOLD DOG’s in Red Envelope Ltd. 8,888 Sets</a></p>
                                        <span class="price">$19.95</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide" data-slick-index="3" aria-hidden="true" tabindex="-1"
                                 role="option" aria-describedby="slick-slide03" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-1-lucky-money-with-red-envelope/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_mockENV_1bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-1-lucky-money-with-red-envelope/"
                                               tabindex="-1">2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram
                                                Legal Tender U.S. $1 BILL with Red Envelope</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide" data-slick-index="4" aria-hidden="true" tabindex="-1"
                                 role="option" aria-describedby="slick-slide04" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-2-lucky-money-with-red-envelope/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_mockENV_2bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-2-lucky-money-with-red-envelope/"
                                               tabindex="-1">2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram
                                                Legal Tender U.S. $2 BILL with Red Envelope</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-current slick-active" data-slick-index="5"
                                 aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide05"
                                 style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-10-bill-limited-numbered-of-88/"
                                       tabindex="0">
                                        <img src="<?php echo THEME_IMG_URL ?>/Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-10-bill-limited-numbered-of-88/"
                                               tabindex="0">Tên Sản Phẩm</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-cloned slick-active" data-slick-index="6"
                                 aria-hidden="false" tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-with-blue-folio/"
                                       tabindex="0">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_Folio_2bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-with-blue-folio/"
                                               tabindex="0">Tên Sản Phẩm</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-cloned slick-active" data-slick-index="7"
                                 aria-hidden="false" tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-blue-folio/"
                                       tabindex="0">
                                        <img src="<?php echo THEME_IMG_URL ?>/YearDOG_Folio_1bill-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-blue-folio/"
                                               tabindex="0">Tên Sản Phẩm</a></p>
                                        <span class="price">300.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 slick-slide slick-cloned" data-slick-index="8" aria-hidden="true"
                                 tabindex="-1" style="width: 380px;">
                                <div class="info-box" style="height: 481px;">
                                    <a class="imgbox"
                                       href="https://newyearmoney.com/product/2018-year-of-the-dog-12-lunar-new-year-set-dual-8s-gold-dogs-in-red-envelope-ltd-8888-sets/"
                                       tabindex="-1">
                                        <img src="<?php echo THEME_IMG_URL ?>/CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-600x600.jpeg"
                                             alt="">
                                        <span class="shopnow-btn">Mua Ngay</span> </a>
                                    <div class="info-text">
                                        <p>
                                            <a href="https://newyearmoney.com/product/2018-year-of-the-dog-12-lunar-new-year-set-dual-8s-gold-dogs-in-red-envelope-ltd-8888-sets/"
                                               tabindex="-1">2018 YEAR OF THE DOG $1/$2 Lunar New Year Set – DUAL 8’s
                                                GOLD DOG’s in Red Envelope Ltd. 8,888 Sets</a></p>
                                        <span class="price">$19.95</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


            <button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button"
                    style="display: block;">Next
            </button>
            <ul class="slick-dots" style="display: block;" role="tablist">
                <li class="" aria-hidden="true" role="presentation" aria-selected="true" aria-controls="navigation10"
                    id="slick-slide10">
                    <button type="button" data-role="none" role="button" tabindex="0">1</button>
                </li>
                <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation11"
                    id="slick-slide11" class="">
                    <button type="button" data-role="none" role="button" tabindex="0">2</button>
                </li>
                <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation12"
                    id="slick-slide12" class="">
                    <button type="button" data-role="none" role="button" tabindex="0">3</button>
                </li>
                <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation13"
                    id="slick-slide13" class="">
                    <button type="button" data-role="none" role="button" tabindex="0">4</button>
                </li>
                <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation14"
                    id="slick-slide14" class="">
                    <button type="button" data-role="none" role="button" tabindex="0">5</button>
                </li>
                <li aria-hidden="false" role="presentation" aria-selected="false" aria-controls="navigation15"
                    id="slick-slide15" class="slick-active">
                    <button type="button" data-role="none" role="button" tabindex="0">6</button>
                </li>
                <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation16"
                    id="slick-slide16">
                    <button type="button" data-role="none" role="button" tabindex="0">7</button>
                </li>
                <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation17"
                    id="slick-slide17">
                    <button type="button" data-role="none" role="button" tabindex="0">8</button>
                </li>
                <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation18"
                    id="slick-slide18">
                    <button type="button" data-role="none" role="button" tabindex="0">9</button>
                </li>
                <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation19"
                    id="slick-slide19">
                    <button type="button" data-role="none" role="button" tabindex="0">10</button>
                </li>
            </ul>
        </div>
    </div>
</div>
</div>

</div>


<?php get_footer();?>