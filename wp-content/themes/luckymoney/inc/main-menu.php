<?php if(has_nav_menu('center-menu')):?>
<div id="site-navigation-wrap" class="clr">
	<div id="site-navigation-inner" class="">
		<nav id="site-navigation" class="navigation main-navigation"
			role="navigation">
<?php 
	//<li><a href="#">Home</a></li>
	$args = array( 
			'menu' 				=> '', 
			'container' 		=> 'div', 
			'container_class' 	=> 'menu-categories-container', 
			'container_id' 		=> '', 
			'menu_class' 		=> 'main-nav dropdown-menu sf-menu', 
			'menu_id' 			=> 'menu-categories',	
			'echo' 				=> true, 
			'fallback_cb' 		=> 'wp_page_menu', 
			'before' 			=> '', 
			'after' 			=> '', 
			'link_before' 		=> '', 
			'link_after' 		=> '', 
			'items_wrap' 		=> '<ul id="%1$s" class="%2$s">%3$s</ul>',	
			'depth' 			=> 0, 
			'walker' 			=> '', // new My_Walker_Menu
			'theme_location' 	=> 'center-menu' 
		);
	wp_nav_menu($args);
?>

            <li class="cart-icon pull-left">
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
            </li>

            <!--
            <a href="#mobile-nav" class="navigation-toggle"> <span
				class="fa fa-bars navigation-toggle-icon"></span> <span
				class="navigation-toggle-text">Browse Categories</span>
			</a>
			-->
		</nav>

	</div>

</div>
<?php endif;?>

<!-- <div id="site-navigation-wrap" class="clr">
	<div id="site-navigation-inner" class="clr container">
		<nav id="site-navigation" class="navigation main-navigation clr"
			role="navigation">
			<div class="menu-categories-container">
				<ul id="menu-categories" class="main-nav dropdown-menu sf-menu">
					<li class="menu-item-object-category cat-28"><a href="#">Sports</a>
					</li>
					<li class="menu-item-object-category cat-5"><a href="#">Photography</a>
					</li>
					<li class="menu-item-object-category cat-6"><a href="#">Travel</a>
					</li>
					<li class="menu-item-object-category cat-3"><a href="#">Shopping</a>
					</li>
					<li class="menu-item-object-category cat-4"><a href="#">Nature</a>
					</li>
					<li class="menu-item-object-category cat-27"><a href="#">News</a></li>
					<li class="menu-item-object-category cat-2"><a href="#">Videos</a>
					</li>
					<li class="menu-item-object-category cat-26"><a href="#">Health</a>
					</li>
				</ul>
			</div>
			<a href="#mobile-nav" class="navigation-toggle"> <span
				class="fa fa-bars navigation-toggle-icon"></span> <span
				class="navigation-toggle-text">Browse Categories</span>
			</a>
		</nav>

	</div>

</div>
 -->