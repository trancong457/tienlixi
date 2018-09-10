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
        'name'          => __( 'Top content area', 'lucky_money' ),
        'id'            => 'top-content-widget-area',
        'description'   => __( 'Hien thi noi dung trong vung Top Content', 'lucky_money' ),
        'class'         => '',
        'before_widget' => '<div id="%1$s" class="%2$s clr">',
        'after_widget'  => '</div>',
        'before_title'  => '',
        'after_title'   => ''
    ));


}

