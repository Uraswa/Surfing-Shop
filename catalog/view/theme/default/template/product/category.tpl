<div class="page-container-small"
     style='background-image: url("https://i1.wp.com/www.surfer.com/wp-content/uploads/2019/12/laura.jpg?resize=1920%2C1080&ssl=1"); object-fit: contain'
><?php echo $header; ?>
    <div class="container">

        <div class="row">
            <div class="col-sm-3">
                <?php echo $userinfo ?>
                <?php echo $menu ?>
                <?php echo $category_options ?>
                <?php echo $manufacturers ?>
                <?php echo $open_banner ?>
            </div>
            <div id="content" class="col-sm-9" style="margin-top: 220px"><?php echo $content_top; ?>
                <?php echo $breadcrumbs_module ?>
                <?php if ($categories) { ?>
                <h3><?php echo $text_refine; ?></h3>
                <?php if (count($categories) <= 5) { ?>
                <div class="row">
                    <div class="col-sm-3">
                        <ul>
                            <?php foreach ($categories as $category) { ?>
                            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
                <?php } else { ?>
                <div class="row">
                    <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
                    <div class="col-sm-3">
                        <ul>
                            <?php foreach ($categories as $category) { ?>
                            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                    <?php } ?>
                </div>
                <?php } ?>
                <?php } ?>
                <?php if ($products) { ?>
                <div id="products_grid__search">
                    <div class="row products_grid__search" id="products_grid__search"
                         style="<?php echo $categories ? '' : 'margin-top: 56px'?>">
                        <div class="col-sm-6 col-md-4 col-xs-6">
                            <div class="select_module" style="">
                                <label class="input-sort-label" style="margin-right: 10px;"
                                       for="input-sort"><?php echo $text_sort; ?></label>
                                <select name="sort" id="input-sort" >
                                    <?php foreach ($sorts as $sorts) { ?>
                                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                    <option value="<?php echo $sorts['href']; ?>"
                                            selected="selected"><?php echo $sorts['text']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-6 hidden-xs">
                            <div class="product_grid__view_mode"
                            ">
                            <?php echo $view_text ?>
                            <div class="btn-group btn-group-sm">
                                <button type="button" class="btn btn-default list-view" data-toggle="tooltip"
                                        title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                                <button type="button" class="btn btn-default grid-view" data-toggle="tooltip"
                                        title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-6 col-md-3 col-xs-6">
                        <div class="select_module">
                            <label for="input-limit"><?php echo $text_limit; ?></label>
                            <select name="limit" id="input-limit" >
                                <?php foreach ($limits as $limits) { ?>
                                <?php if ($limits['value'] == $limit) { ?>
                                <option value="<?php echo $limits['href']; ?>"
                                        selected="selected"><?php echo $limits['text']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                                <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="product_grid__pagination__wrapper">
                            <div>
                                <?php echo $pagination ? $page_text . ':' : '' ?>
                            </div>
                            <?php echo $pagination ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>
            <div class="products_grid">
                <?php foreach ($products as $product) { ?>
                <div><?php echo $product ?></div>
                <?php } ?>
                <?php if (!count($products)) { ?>
                    0 results
                <?php } ?>
            </div>
            <?php if ($products) { ?>
            <div id="products_grid_search2">
            </div>
            <?php } ?>
            <?php if (!$categories && !$products) { ?>
            <p><?php echo $text_empty; ?></p>
            <div class="buttons">
                <div class="pull-right"><a href="<?php echo $continue; ?>"
                                           class="btn btn-primary"><?php echo $button_continue; ?></a></div>
            </div>
            <?php } ?>
        </div>
        <?php echo $column_right; ?></div>
    <?php echo $brands; ?>
</div>
<?php echo $footer; ?></div>