


<?php get_header(); ?>

<div class="container">
    <div class="padding-40 woocommerce-page">
    <?php
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();
          the_content();
        endwhile;
    else :
        echo wpautop( 'Sorry, no posts were found' );
    endif;
    ?>
    </div>
</div>

<?php get_footer(); ?>
