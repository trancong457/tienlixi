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