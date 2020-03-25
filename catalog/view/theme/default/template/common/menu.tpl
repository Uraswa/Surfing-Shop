
<ul class="menu bg-blue">
    <li class="menu__title raleway bg-dark">
        <?php echo $menu ?>
    </li>
    <?php foreach($items as $item) { ?>
            <li class='menu__item <?php echo $item[2] ? "selected" : "" ?> raleway text-dark'><a href='<?php echo $item[1] ?>'><?php echo $item[0] ?></a></li>
    <?php }?>
</ul>