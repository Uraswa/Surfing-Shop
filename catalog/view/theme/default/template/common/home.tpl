<div class="page-container"
     style='background-image: url("https://www.pixelstalk.net/wp-content/uploads/2016/06/Free-Surfing-Backgrounds.jpg");'>
    <?php echo $header; ?>
    <div class="container bg-white">
        <div class="row">
            <div class="col-sm-3">
                <?php echo $userinfo ?>
                <?php echo $banner ?>
                <?php echo $menu ?>
                <?php echo $open_banner ?>
            </div>
            <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9'; ?>
            <?php } else { ?>
            <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>">
                <?php echo $slider ?>

            </div>
            <?php echo $column_right; ?></div>
            <?php echo $brands ?>
            <?php echo $instagram ?>
            <?php echo $social_links ?>
    </div>
    <?php echo $footer; ?>
</div>
