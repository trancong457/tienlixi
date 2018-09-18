<?php
$class_category = '';
if( is_product_category() || is_shop()) {
    $class_category = 'product-list clearfix';
}
?>

<?php get_header(); ?>
<div class="<?php echo $class_category ?>">
    <div class="container">
        <div class="padding-40">
            <?php woocommerce_content(); ?>
        </div>
    </div>
</div>
<?php get_footer(); ?>