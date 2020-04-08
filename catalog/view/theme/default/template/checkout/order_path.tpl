<div class="order_path">
    <?php foreach($paths as $index => $path) { ?>
        <div class="order_path__step <?php echo $route == $path[0] ? 'active' : '' ?>">
            <div class="order_path__step__num"><?php echo $index ?></div>
            <div class="order_path__step__text"><?php echo $path[1] ?></div>
        </div>
    <?php } ?>
</div>