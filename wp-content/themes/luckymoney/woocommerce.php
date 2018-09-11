<?php
$class_category = '';
if( is_product_category() || is_shop()) {
    $class_category = 'product-list padding-40 clearfix';
}
?>

<?php get_header(); ?>
<div class="<?php echo $class_category ?>">
    <div class="container">
    <?php woocommerce_content(); ?>
    </div>
</div>
<?php get_footer(); ?>