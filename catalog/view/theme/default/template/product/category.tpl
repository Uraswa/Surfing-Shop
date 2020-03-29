<div class="page-container-small"
  style='background-image: url("https://i1.wp.com/www.surfer.com/wp-content/uploads/2019/12/laura.jpg?resize=1920%2C1080&ssl=1"); object-fit: contain'
><?php echo $header; ?>
  <div class="container" >

    <div class="row" >
      <div class="col-sm-3">
        <?php echo $userinfo ?>
        <?php echo $menu ?>
        <?php echo $category_options ?>
        <?php echo $manufacturers ?>
        <?php echo $open_banner ?>
      </div>
      <div id="content" class="col-sm-9" style="margin-top: 180px"><?php echo $content_top; ?>
        <h1><?php echo $heading_title; ?></h1>
        <?php if ($thumb || $description) { ?>
        <div class="row">
          <?php if ($thumb) { ?>
          <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>"
                                     title="<?php echo $heading_title; ?>" class="img-thumbnail"/></div>
          <?php } ?>
          <?php if ($description) { ?>
          <div class="col-sm-10"><?php echo $description; ?></div>
          <?php } ?>
        </div>
        <hr>
        <?php } ?>
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
        <div class="row">
          <div class="col-md-2 col-sm-6 hidden-xs">
            <div class="btn-group btn-group-sm">
              <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip"
                      title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
              <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip"
                      title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="form-group">
              <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-link"><?php echo $text_compare; ?></a>
            </div>
          </div>
          <div class="col-md-4 col-xs-6">
            <div class="form-group input-group input-group-sm">
              <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
              <select id="input-sort" class="form-control" onchange="location = this.value;">
                <?php foreach ($sorts as $sorts) { ?>
                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="col-md-3 col-xs-6">
            <div class="form-group input-group input-group-sm">
              <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
              <select id="input-limit" class="form-control" onchange="location = this.value;">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <option value="<?php echo $limits['href']; ?>"
                        selected="selected"><?php echo $limits['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                    <div class="col-sm-3 text-left">
                        <div class="product_grid__pagination__wrapper">
                          <div>
                            <?php echo $page_text ?>:
                          </div>
                          <?php echo $pagination ?>
                        </div>
                    </div>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
        </div>
        <div class="products_grid">
          <?php foreach ($products as $product) { ?>
          <div ><?php echo $product ?></div>
          <?php } ?>
        </div>
        <div class="row">
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
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
