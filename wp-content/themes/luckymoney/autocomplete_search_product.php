
<?php

$path =  __DIR__.'/../../../wp-load.php';
require_once($path);

$post = $_POST;
if(!$post){
    die();
}
$keyword = $post['keyword'];


if(!$keyword)
die();

$keyword = addslashes($keyword);

 $args = array(
        's' => $keyword,
        'posts_per_page' => 3,
        'post_type' => 'product',
        'meta_query' => array(
            array(
                'key' => '_stock_status',
                'value' => 'instock'
            )
        )
    );

//$params = array('posts_per_page' => 5); // (1)
$wc_query = new WP_Query( $args );



?>
<?php if ($wc_query->have_posts()) :  ?>
<ul class="list-style">
    <?php while ($wc_query->have_posts()) :
    $wc_query->the_post(); ?>
    <li onclick="selectProduct('<?php the_permalink(); ?>');"><?php the_title();  ?></li>
    <?php endwhile; ?>
</ul>
<?php wp_reset_postdata();  ?>
<?php else:  ?>

<?php endif; ?>
