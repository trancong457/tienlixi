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
        'description'   => __( 'Show very top of Website', 'lucky_money' ),
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
        'before_widget' => '<section class="%1$s"><div class="container"><div id="%1$s" class="%2$s clearfix">',
        'after_widget'  => '</div></div></section>',
        'before_title'  => '<h2 class="widget-title intro-text center">',
        'after_title'   => '</h2>'
    ));


}

/*============================================================================
 * 2. NẠP NHỮNG TẬP TIN JS VÀO THEME
============================================================================*/
add_action('wp_enqueue_scripts', 'theme_register_js');

function theme_register_js(){
    $jsUrl = get_template_directory_uri() . '/js';

    wp_enqueue_script('script',$jsUrl . '/main.js',array('jquery'),'1.0',true);
    wp_enqueue_script('script_1','https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.js',array('jquery'),'1.0',true);
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

remove_action( 'woocommerce_before_shop_loop', 'woocommerce_catalog_ordering', 30 );

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
    echo '<a class="title_product" href="'. esc_url( get_the_permalink() ) .'">';
};

//add link for loop item image
add_action( 'woocommerce_after_shop_loop_item_title', 'action_woocommerce_after_shop_loop_item_title', 10, 0 );
function action_woocommerce_after_shop_loop_item_title(  ) {
    echo '</a>';
};

/**
 * WooCommerce Product Thumbnail
 **/

if ( ! function_exists( 'woocommerce_template_loop_product_thumbnail' ) ) {
    function woocommerce_template_loop_product_thumbnail() {
        echo woocommerce_get_product_thumbnail();
    }
}

if ( ! function_exists( 'woocommerce_get_product_thumbnail' ) ) {

    function woocommerce_get_product_thumbnail( $size = 'shop_catalog', $placeholder_width = 0, $placeholder_height = 0  ) {
        global $post, $woocommerce;

        $output = '<a class="imgbox" href="'. esc_url( get_the_permalink() ) .'">';
        if ( has_post_thumbnail() ) {

            $output .= get_the_post_thumbnail( $post->ID, $size );

        } else {

            $output .= '<img src="'. woocommerce_placeholder_img_src() .'" alt="Placeholder" width="' . $placeholder_width . '" height="' . $placeholder_height . '" />';

        }

        $output .= '<span class="shopnow-btn">Mua Ngay</span></a>';

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


add_action( 'wp', 'western_custom_buy_buttons' );
function western_custom_buy_buttons(){
    remove_action( 'woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart' );
}

// icon cart header
/**
 * Ensure cart contents update when products are added to the cart via AJAX
 */

function my_header_add_to_cart_fragment( $fragments ) {

    ob_start();
    $count = WC()->cart->cart_contents_count;
    ?>

        <?php if ( in_array( 'woocommerce/woocommerce.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) ) ) {

            $count = WC()->cart->cart_contents_count;
            ?>
            <a class="cart-contents icon-round" href="<?php echo WC()->cart->get_cart_url(); ?>" title="<?php _e( 'View your shopping cart' ); ?>">
                <i class="ei ei-cart"></i>
                <?php
                if ( $count > 0 ) {
                    ?>
                    <span class="cart-contents-count cart-item"><?php echo esc_html( $count ); ?></span>
                    <?php
                }
                ?>
            </a>

        <?php } ?>


    <?php

    $fragments['a.cart-contents'] = ob_get_clean();

    return $fragments;
}
add_filter( 'woocommerce_add_to_cart_fragments', 'my_header_add_to_cart_fragment' );

/* for post_thumbnail */

/*
function wpdocs_post_image_html( $html, $post_id, $post_image_id ) {
    $html = '<a href="' . get_permalink( $post_id ) . '" alt="' . esc_attr( get_the_title( $post_id ) ) . '">' . $html . '</a>';
    return $html;
}
if(is_category()){
    add_filter( 'post_thumbnail_html', 'wpdocs_post_image_html', 10, 3 );
}
*/


/* remove fields in checkout */

add_filter( 'woocommerce_checkout_fields' , 'custom_remove_woo_checkout_fields' );

function custom_remove_woo_checkout_fields( $fields ) {

    // remove billing fields
    unset($fields['billing']['billing_first_name']);
    unset($fields['billing']['billing_last_name']);
    unset($fields['billing']['billing_company']);
    unset($fields['billing']['billing_address_1']);
    unset($fields['billing']['billing_address_2']);
    unset($fields['billing']['billing_city']);
    unset($fields['billing']['billing_postcode']);
    unset($fields['billing']['billing_country']);
    unset($fields['billing']['billing_state']);
    //unset($fields['billing']['billing_phone']);
    unset($fields['billing']['billing_email']);

    // remove shipping fields
   // unset($fields['shipping']['shipping_first_name']);
    //unset($fields['shipping']['shipping_last_name']);
    unset($fields['shipping']['shipping_company']);
    unset($fields['shipping']['shipping_address_1']);
    unset($fields['shipping']['shipping_address_2']);
    unset($fields['shipping']['shipping_city']);
    unset($fields['shipping']['shipping_postcode']);
    unset($fields['shipping']['shipping_country']);
    unset($fields['shipping']['shipping_state']);

    // remove order comment fields
    //unset($fields['order']['order_comments']);

    return $fields;
}

// Add Full Name
add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );

// Our hooked in function - $fields is passed via the filter!
function custom_override_checkout_fields( $fields ) {
    $fields['billing']['full_name'] = array(
        'label' => __('Tên', 'woocommerce'),
        'placeholder' => _x('Tên', 'placeholder', 'woocommerce'),
        'required' => true,
        'class' => array('form-row-wide'),
        'clear' => true
    );

    $fields['billing']['address'] = array(
        'label' => __('Địa Chỉ', 'woocommerce'),
        'placeholder' => _x('Địa Chỉ', 'placeholder', 'woocommerce'),
        'required' => true,
        'class' => array('form-row-wide'),
        'clear' => true
    );
    return $fields;
}

add_action('woocommerce_checkout_update_order_meta', 'my_custom_checkout_field_update_order_meta');

function my_custom_checkout_field_update_order_meta( $order_id ) {
    if ($_POST['full_name']) update_post_meta( $order_id, 'billing_full_name', esc_attr($_POST['full_name']));
    if ($_POST['address']) update_post_meta( $order_id, 'billing_address', esc_attr($_POST['address']));
}

add_action( 'woocommerce_admin_order_data_after_billing_address', 'my_custom_checkout_fullname_display_admin_order_meta', 1, 1 );

function my_custom_checkout_fullname_display_admin_order_meta($order){
    echo '<p><strong>'.__('Tên').':</strong> ' . get_post_meta( $order->id, 'billing_full_name', true ) . '</p>';

}


add_action( 'woocommerce_admin_order_data_after_billing_address', 'my_custom_checkout_address_display_admin_order_meta', 1, 1 );

function my_custom_checkout_address_display_admin_order_meta($order){
    echo '<p><strong>'.__('Địa Chỉ').':</strong> ' . get_post_meta( $order->id, 'billing_address', true ) . '</p>';

}

add_filter("woocommerce_checkout_fields", "order_fields");

function order_fields($fields) {

    $order = array(
        "full_name",
        "address",
        "billing_phone"

    );
    foreach($order as $field)
    {
        $ordered_fields[$field] = $fields["billing"][$field];
    }

    $fields["billing"] = $ordered_fields;
    return $fields;

}

// remove description category

add_action('woocommerce_archive_description', 'custom_archive_description', 2 );
function custom_archive_description(){
    if( is_product_category() ) :
        remove_action('woocommerce_archive_description', 'woocommerce_taxonomy_archive_description', 10 );
        add_action( 'woocommerce_after_main_content', 'woocommerce_taxonomy_archive_description', 5 );
    endif;
}