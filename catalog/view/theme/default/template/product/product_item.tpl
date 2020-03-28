<a href="<?php echo $link ?>" class="product__item__wrapper">
    <div class="item product__item">
        <div class="product__item__img_container">
            <img src="<?php echo $image ?>" alt="">
        </div>
        <div class="product__item__desc">
            <div class="product__item__desc__title">
                <?php echo $model ?>
            </div>
            <div class="product__item__desc__price">
                <?php echo $special ?>
                <?php echo $special ? "<br>" : "";?>
                <span class="<?php $special ? product__item__desc__price__old : ''; ?>"><?php echo $price ?></span>
            </div>
        </div>
    </div>
</a>
