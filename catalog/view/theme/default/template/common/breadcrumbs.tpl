<div class="breadcrumb__module">
    <div class="breadcrumb__list">
        <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
        <div><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']?></a></div>
        <?php if (!($index == count($breadcrumbs) - 1)){ ?>
        <div>»</div>
        <?php } ?>
        <?php } ?>
    </div>
</div>