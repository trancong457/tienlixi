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


		</nav>

	</div>

</div>
<?php endif;?>

