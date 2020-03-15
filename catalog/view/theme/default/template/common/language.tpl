<?php if (count($languages) > 1) { ?>
<div class="pull-left language-selector">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
        <div class="btn-group">
            <button class="btn btn-link dropdown-toggle language__text" data-toggle="dropdown">
                <span class=""><?php echo $text_language; ?></span> <i
                        class="fa fa-caret-down"></i></button>
            <ul class="dropdown-menu">
                <?php foreach ($languages as $language) { ?>
                <li>
                    <button class="btn btn-link btn-block language-select" type="button"
                            name="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></button>
                </li>
                <?php } ?>
            </ul>
        </div>
        <input type="hidden" name="code" value=""/>
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>"/>
    </form>
</div>
<?php } ?>
