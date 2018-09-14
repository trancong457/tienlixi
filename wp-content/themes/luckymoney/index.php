

<?php get_header(); ?>

<div class="container">
    <section id="primary" class="site-content padding-40">
        <div id="content" class="section-inner clearfix" role="main">
            <?php
            // Check if there are any posts to display
            if ( have_posts() ) : ?>
            <?php

            // The Loop
            while ( have_posts() ) : the_post();
            ?>
            <div class="">
                <?php
                if(has_post_thumbnail()){
                    the_post_thumbnail( array(400, 400) );
                }
                ?>
                <h2 class="title_content"><a href="<?php the_permalink() ?>" rel="bookmark" title=""><?php the_title(); ?></a></h2>
                <small class="datetime_content"><?php the_time('F jS, Y') ?> by <?php the_author_posts_link() ?></small>

                <div class="media_entry">
                    <?php the_content( $more_link_text , $strip_teaser ); ?>
                </div>

            </div>
            <?php endwhile; // End Loop

            else: ?>
            <p>Sorry, no posts matched your criteria.</p>
            <?php endif; ?>
        </div>
    </section>

</div>

<?php get_footer(); ?>
