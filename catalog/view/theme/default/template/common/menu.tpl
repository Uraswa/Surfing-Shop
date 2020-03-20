
<ul class="menu bg-blue">
    <li class="menu__title raleway bg-dark">
        <?php echo $menu ?>
    </li>
    <?php
        foreach($items as $item) {
            echo "<li class='menu__item raleway text-dark'><a href=''>${$item}</a></li>";
        }
    ?>
</ul>