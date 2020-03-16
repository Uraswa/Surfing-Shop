<div class="user__info">
    <div class="row">
        <div class="col-md-6 user__info__text_blocks">
            <a href="/index.php?route=account/login" class="text-red raleway"><?php echo $text_login ?></a>
        </div>
        <div class="col-md-6 user__info__text_blocks">
            <a href="<?php echo $wishlist; ?>" class="text-red raleway"><?php echo $text_wishlist ?></a>
        </div>
    </div>
    <?php echo $cart ?>
    <div>
        <?php echo $search ?>
    </div>
</div>