<?php
define('THEME_URL', get_template_directory_uri());
define('THEME_JS_URL', THEME_URL . '/js');
define('THEME_CSS_URL', THEME_URL . '/css');
define('THEME_IMG_URL', THEME_URL . '/images');

define('THEME_DIR', get_template_directory());

define('THEME_INC_DIR', THEME_DIR . '/inc');
define('THEME_WIDGET_DIR', THEME_DIR . '/widgets');


/*============================================================================
 * 5. THEM VUNG MENU VAO TRONG THEME
============================================================================*/
add_action('init', 'theme_register_menus');
function theme_register_menus(){
    register_nav_menus(
        array(
            'top-menu' 		=> __('Top menu'),
            'center-menu' 	=> __('Center menu'),
            'footer-menu' 	=> __('Footer menu')
        )
    );
}


/*============================================================================
 * 7. MENU - CHINH SUA GIA TRI CUA THUOC TINH CLASS TRONG THE <li>
============================================================================*/
add_filter('nav_menu_css_class', 'theme_nav_css',10,4);
function theme_nav_css($classes, $item, $args, $depth){


    if($args->theme_location == 'center-menu'){
        if($item->menu_item_parent == 0){
            $newClass = 'cat-' . $item->object_id;
            //echo '<br/>' . $newClass;
            $classes[] = $newClass;
        }
    }
    return $classes;
}



/*============================================================================
 * 3. KHAI BÁO HỆ THỐNG WIDGET CỦA THEME
============================================================================*/
add_action('widgets_init', 'theme_widgets_init');

function theme_widgets_init(){

    register_sidebar(array(
        'name'          => __( 'Primary widget area', 'lucky_money' ),
        'id'            => 'primary-widget-area',
        'description'   => __( 'Thêm Widget vào phía bên tay phải của Website', 'zendvn' ),
        'class'         => '',
        'before_widget' => '<div id="%1$s" class="sidebar-widget %2$s clr">',
        'after_widget'  => '</div>',
        'before_title'  => '<span class="widget-title">',
        'after_title'   => '</span>'
    ));

    register_sidebar(array(
        'name'          => __( 'Top widget area', 'lucky_money' ),
        'id'            => 'top-widget-area',
        'description'   => __( 'Hien thi trong vung Top', 'lucky_money' ),
        'class'         => '',
        'before_widget' => '<div id="%1$s" class="%2$s clr">',
        'after_widget'  => '</div>',
        'before_title'  => '',
        'after_title'   => ''
    ));


}

/*============================================================================
 * 2. NẠP NHỮNG TẬP TIN JS VÀO THEME
============================================================================*/
add_action('wp_enqueue_scripts', 'theme_register_js');

function theme_register_js(){
    $jsUrl = get_template_directory_uri() . '/js';

    wp_enqueue_script('script',$jsUrl . '/main.js',array('jquery'),'1.0',true);
}

/*============================================================================
 * 1. NẠP NHỮNG TẬP TIN CSS VÀO THEME
============================================================================*/
add_action('wp_enqueue_scripts', 'theme_register_style');

function theme_register_style(){
    global $wp_styles;
    $cssUrl = get_template_directory_uri() . '/css';
    //echo $cssUrl;
    wp_register_style('theme_style_main', $cssUrl . '/main.css',array(),'1.0');
    wp_enqueue_style('theme_style_main');

    wp_register_style('theme_style_media', $cssUrl . '/media.css',array(),'1.0');
    wp_enqueue_style('theme_style_media');

    wp_register_style('elegant_icons', $cssUrl . '/elegant-icons.min.css',array(),'1.0');
    wp_enqueue_style('elegant_icons');

}


/*============================================================================
 * 1. CÀI ĐẶT Woocommerce VÀO THEME
============================================================================*/


add_theme_support( 'post-thumbnails' );

add_action( 'after_setup_theme', 'woocommerce_support' );
function woocommerce_support() {
    add_theme_support( 'woocommerce' );
    //add_theme_support( 'wc-product-gallery-zoom' );
    add_theme_support( 'wc-product-gallery-lightbox' );
    add_theme_support( 'wc-product-gallery-slider' );
}


/*============================================================================
 * 1. OVERRIDE Woocommerce
============================================================================*/

function action_woocommerce_before_shop_loop_item(  ) {
    echo '<div class="info-text">';
};
add_action( 'woocommerce_before_shop_loop_item', 'action_woocommerce_before_shop_loop_item', 10, 0 );

function action_woocommerce_after_shop_loop_item(  ) {
    echo '</div>';
};
add_action( 'woocommerce_after_shop_loop_item', 'action_woocommerce_after_shop_loop_item', 10, 0 );

// remove remove_add_to_cart_buttons on category
add_action( 'woocommerce_after_shop_loop_item', 'remove_add_to_cart_buttons', 1 );

function remove_add_to_cart_buttons() {
    if( is_product_category() || is_shop()) {
        remove_action( 'woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart' );
    }
}

//change title product woocommerce on list

//remove link wrap for loop item
remove_action( 'woocommerce_before_shop_loop_item', 'woocommerce_template_loop_product_link_open', 10 );

// add link to title
add_action( 'woocommerce_before_shop_loop_item_title', 'action_woocommerce_before_shop_loop_item_title', 10, 0 );
function action_woocommerce_before_shop_loop_item_title(  ) {
    echo '<a href="'. esc_url( get_the_permalink() ) .'">';
};

//add link for loop item image
add_action( 'woocommerce_after_shop_loop_item_title', 'action_woocommerce_after_shop_loop_item_title', 10, 0 );
function action_woocommerce_after_shop_loop_item_title(  ) {
    echo '</a>';
};

if ( ! function_exists( 'woocommerce_template_loop_product_thumbnail' ) ) {
    function woocommerce_template_loop_product_thumbnail() {
        echo woocommerce_get_product_thumbnail();
    }
}
/**
 * WooCommerce Product Thumbnail
 **/
if ( ! function_exists( 'woocommerce_get_product_thumbnail' ) ) {

    function woocommerce_get_product_thumbnail( $size = 'shop_catalog', $placeholder_width = 0, $placeholder_height = 0  ) {
        global $post, $woocommerce;

        $output = '<a class="imgbox" href="'. esc_url( get_the_permalink() ) .'">';
        if ( has_post_thumbnail() ) {

            $output .= get_the_post_thumbnail( $post->ID, $size );

        } else {

            $output .= '<img src="'. woocommerce_placeholder_img_src() .'" alt="Placeholder" width="' . $placeholder_width . '" height="' . $placeholder_height . '" />';

        }

        $output .= '<span class="shopnow-btn">Buy Now</span></a>';

        return $output;
    }
}

// title category

// define the woocommerce_show_page_title callback
add_filter( 'woocommerce_show_page_title', function(){
    return false;
});


// reorder single product
/* default
@hooked woocommerce_template_single_title - 5
* @hooked woocommerce_template_single_rating - 10
* @hooked woocommerce_template_single_price - 10
* @hooked woocommerce_template_single_excerpt - 20
* @hooked woocommerce_template_single_add_to_cart - 30
* @hooked woocommerce_template_single_meta - 40
* @hooked woocommerce_template_single_sharing - 50
* @hooked WC_Structured_Data::generate_product_data() - 60
 *
 */

/* new postion
woocommerce_template_single_title - 5
woocommerce_template_single_meta - 6
woocommerce_template_single_price - 7
woocommerce_template_single_add_to_cart - 30
*/

// Remove product category/tag meta from its original position
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_meta', 40 );
// Add product meta in new position
add_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_meta', 6 );

// Remove product price from its original position
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 10 );
// Add product price in new position
add_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 7 );

remove_action( 'woocommerce_after_single_product_summary', 'woocommerce_output_product_data_tabs', 10 );
//add_filter('woocommerce_product_description_heading', '__return_null');
function woocommerce_template_product_description() {
    woocommerce_get_template( 'single-product/tabs/description.php' );
}
add_action( 'woocommerce_after_single_product_summary', 'woocommerce_template_product_description', 1 );

//remove default css woocommerce
add_filter( 'woocommerce_enqueue_styles', '__return_empty_array' );

//change_number_related_products
add_filter( 'woocommerce_output_related_products_args', 'bbloomer_change_number_related_products', 9999 );

function bbloomer_change_number_related_products( $args ) {
    $args['posts_per_page'] = 6; // # of related products
    $args['columns'] = 3; // # of columns per row
    return $args;
}