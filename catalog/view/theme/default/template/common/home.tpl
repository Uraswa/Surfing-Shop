<div class="page-container" style='background-image: url("https://i1.wp.com/www.surfer.com/wp-content/uploads/2019/12/laura.jpg?resize=1920%2C1080&ssl=1");'>
    <?php echo $header; ?>
    <div class="container bg-white">
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9'; ?>
            <?php } else { ?>
            <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content"
                 class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
            <?php echo $column_right; ?></div>
    </div>
    <?php echo $footer; ?>
</div>
