<ul class="menu <?php echo $bg ?>">
    <li class="menu__title raleway bg-dark">
        <?php echo $title ?>
    </li>
    <?php foreach($items as $item) { ?>
    <li class='menu__item <?php echo $item[2] ? "selected" : "" ?> raleway text-dark' link='<?php echo $item[2] ? @json_encode($item[3]) : $item[1]  ?>'><div><?php echo $item[0] ?></div></li>
    <?php }?>
</ul>