<div class="products__section">
    <div class="products__section__title">
        <?php echo $title ?>
        <div class="products__section__title__buttons">
            <button class="products__carousel__1__nav_btn obratno">
                <img src="image/catalog/arrow-right.png" alt="">
            </button>
            <button class="products__carousel__1__nav_btn">
                <img src="image/catalog/arrow-left.png" alt="">
            </button>
        </div>
    </div>
    <?php foreach($products_rows as $product_row) { ?>
    <div class="owl-carousel owl-theme products__carousel__1">
        <?php foreach($product_row as $product) {
            echo $product;
        }?>
    </div>
    <?php } ?>
</div>