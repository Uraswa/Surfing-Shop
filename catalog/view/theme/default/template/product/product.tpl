<div class="page-container-small"
     style='background-image: url("https://i1.wp.com/www.surfer.com/wp-content/uploads/2019/12/laura.jpg?resize=1920%2C1080&ssl=1"); object-fit: contain'
><?php echo $header; ?>
    <div class="container">
        <!--<ul class="breadcrumb">
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
          <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
          <?php } ?>
        </ul>!-->
        <div class="row">
            <div class="col-sm-3">
                <?php
          $column_left = true;
          echo $userinfo;
          echo $menu;
          echo $category_options;
          echo $manufacturer_left_list;
          echo $open;

        ?>

            </div>
            <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9'; ?>
            <?php } else { ?>
            <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" style="margin-top: 200px" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <div class="row">
                    <?php if ($column_left || $column_right) { ?>
                    <?php $class = 'col-sm-6'; ?>
                    <?php } else { ?>
                    <?php $class = 'col-sm-8'; ?>
                    <?php } ?>
                    <div class="<?php echo $class; ?>">
                        <?php if ($thumb || $images) { ?>
                        <!--<ul class="thumbnails">
                            <?php if ($thumb) { ?>
                            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img
                                            src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>"
                                            alt="<?php echo $heading_title; ?>"/></a></li>
                            <?php } ?>
                            <?php if ($images) { ?>
                            <?php foreach ($images as $image) { ?>
                            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>"
                                                            title="<?php echo $heading_title; ?>"> <img
                                            src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>"
                                            alt="<?php echo $heading_title; ?>"/></a></li>
                            <?php } ?>
                            <?php } ?>
                        </ul>!-->

                        <div class="owl-carousel owl-theme" id="product__image">
                            <?php if ($thumb) { ?>
                            <div class="product__img"><img src="<?php echo $popup; ?>"
                                                           title="<?php echo $heading_title; ?>"
                                                           alt="<?php echo $heading_title; ?>"/></div>
                            <?php } ?>
                            <?php if ($images) { ?>
                            <?php foreach ($images as $index => $image) { ?>
                            <div class="product__img"><img
                                        src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"
                                        alt="<?php echo $heading_title; ?>"/></div>
                            <?php } ?>
                            <?php } ?>
                        </div>

                        <div class="container-fluid">
                            <div class="row product__thumbs__carousel_wrapper">
                                <div class="col-xs-2 col-sm-2 col-md-1 product__thumbs__carousel__btn back">
                                    <img src="image/catalog/arrow-left-big.png" alt="">
                                </div>
                                <div class="col-xs-8 col-sm-8 col-md-10">
                                    <div class="owl-carousel owl-theme" id="product__images" style="">
                                        <?php if ($thumb) { ?>
                                        <div class="item product__carousel__item" key="0"><img
                                                    src="<?php echo $thumb; ?>"
                                                    title="<?php echo $heading_title; ?>"
                                                    alt="<?php echo $heading_title; ?>"/>
                                        </div>
                                        <?php } ?>
                                        <?php if ($images) { ?>
                                        <?php foreach ($images as $index => $image) { ?>
                                        <div class="item product__carousel__item" key="<?php echo $index + 1 ?>"><img
                                                    src="<?php echo $image['thumb']; ?>"
                                                    title="<?php echo $heading_title; ?>"
                                                    alt="<?php echo $heading_title; ?>"/></div>
                                        <?php } ?>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="col-xs-2 col-sm-2 col-md-1 product__thumbs__carousel__btn">
                                    <div class="" style="display: flex; justify-content: flex-end">
                                        <img src="image/catalog/arrow-right-big.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php } ?>

                    </div>
                    <?php if ($column_left || $column_right) { ?>
                    <?php $class = 'col-sm-6'; ?>
                    <?php } else { ?>
                    <?php $class = 'col-sm-4'; ?>
                    <?php } ?>
                    <div class="<?php echo $class; ?>">
                        <div class="product_info">
                            <h2 class="product_info__title"><?php echo $heading_title ?></h2>
                            <?php if ($review_status) { ?>
                            <div class="rating">
                                <p>
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                    <?php if ($rating < $i) { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                    <?php } else { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"
                                                                 style="color: black"></i><i
                                                class="fa fa-star-o fa-stack-1x" style="color: black"></i></span>
                                    <?php } ?>
                                    <?php } ?>
                                    <a href="" class="text-dark"
                                       onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a>
                                    <span class="text-dark">/</span> <a class="text-dark" href=""
                                                                        onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a>
                                </p>
                            </div>
                            <?php } ?>
                            <div class="product__info__sale_info">
                                <div>
                                    <?php if ($price) { ?>
                                    <?php if (!$special) { ?>
                                    <h2 style="margin-top: 0px" class="product__info__sale_info__price"><?php echo $price; ?></h2>
                                    <?php } else { ?>
                                    <h2 style="margin-top: 0px" class="product__info__sale_info__price"><?php echo $special; ?></h2>
                                    <?php } ?>
                                    <?php } ?>
                                </div>
                                <div>
                                    <div style="margin-bottom: 5px"><?php echo $text_model; ?> <?php echo $model; ?></div>
                                    <?php echo $text_stock; ?> <?php echo $stock; ?>
                                </div>
                            </div>
                            <div class="product_info__divider">
                                <hr>
                            </div>
                            <?php if ($overview) { ?>
                            <div class="product_info__quick_overview">
                                <div class="product_info__quick_overview__title">
                                    <?php echo $text_overview ?>
                                </div>
                                <div class="product_info__quick_overview__text">
                                    <?php echo $overview ?>
                                </div>
                            </div>
                            <div class="product_info__divider">
                                <hr>
                            </div>
                            <?php } ?>
                            <?php if ($options) { ?>

                            <?php foreach ($options as $option) { ?>
                            <?php if ($option['type'] == 'radio' || $option['type'] == 'checkbox' || $option['type'] == 'select') { ?>
                            <div class="product__options__select">
                                <div class="product__options__select__title">
                                    <?php echo $option['name']; ?>
                                </div>
                                <select class="product__options__select__select product__options__select__field" <?php echo $option['type'] == 'checkbox' ? 'multiple' : '' ?> hidden name="option[<?php echo $option['product_option_id']; ?>]">
                                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                    <option value="<?php echo $option_value['product_option_value_id']; ?>">
                                        <?php echo $option_value['name']; ?>
                                        <?php if ($option_value['price']) { ?>
                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>
                                        )
                                        <?php } ?>
                                    </option>
                                    <?php } ?>
                                </select>
                                <div class="product__options__select__options">
                                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                    <div  money="<?php
                                        if ($option_value['price']) {
                                            echo $option_value['price'];
                                        } else {
                                            echo 0;
                                        }
                                     ?>" value="<?php echo $option_value['product_option_value_id']; ?>">
                                        <?php echo $option_value['name']; ?>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="product_info__divider">
                                <hr>
                            </div>
                            <?php } ?>
                            <?php if ($option['type'] == 'textarea') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label"
                                       for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5"
                                          placeholder="<?php echo $option['name']; ?>"
                                          id="input-option<?php echo $option['product_option_id']; ?>"
                                          class="form-control product__options__select__field"><?php echo $option['value']; ?></textarea>
                            </div>
                            <?php } ?>
                            <?php if ($option['type'] == 'file') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label"><?php echo $option['name']; ?></label>
                                <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>"
                                        data-loading-text="<?php echo $text_loading; ?>"
                                        class="btn btn-default btn-block">
                                    <i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                <input class="product__options__select__field" type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value=""
                                       id="input-option<?php echo $option['product_option_id']; ?>"/>
                            </div>
                            <?php } ?>
                            <?php if ($option['type'] == 'date') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label"
                                       for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                <div class="input-group date">
                                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                                           value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD"
                                           id="input-option<?php echo $option['product_option_id']; ?>"
                                           class="form-control product__options__select__field"/>
                                    <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
                            </div>
                            <?php } ?>
                            <?php if ($option['type'] == 'datetime') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label"
                                       for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                <div class="input-group datetime">
                                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                                           value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm"
                                           id="input-option<?php echo $option['product_option_id']; ?>"
                                           class="form-control product__options__select__field"/>
                                    <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
                            </div>
                            <?php } ?>
                            <?php if ($option['type'] == 'time') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label"
                                       for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                <div class="input-group time">
                                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                                           value="<?php echo $option['value']; ?>" data-date-format="HH:mm"
                                           id="input-option<?php echo $option['product_option_id']; ?>"
                                           class="form-control product__options__select__field"/>
                                    <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
                            </div>
                            <?php } ?>
                            <?php } ?>
                            <?php } ?>
                            <?php if ($recurrings) { ?>
                            <hr>
                            <h3><?php echo $text_payment_recurring; ?></h3>
                            <div class="form-group required">
                                <select name="recurring_id" class="form-control product__options__select__field">
                                    <option value=""><?php echo $text_select; ?></option>
                                    <?php foreach ($recurrings as $recurring) { ?>
                                    <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                                    <?php } ?>
                                </select>
                                <div class="help-block" id="recurring-description"></div>
                            </div>
                            <?php } ?>
                            <input class="product__options__select__field" type="hidden" name="product_id" value="<?php echo $product_id; ?>"/>
                            <div class="product__options__bottom">
                                <div class="product__options__bottom__quantity">
                                    <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label> <br>
                                    <input maxlength="2" minlength="1" id="input-quantity" name="quantity" value="<?php echo $minimum; ?>" class="product__options__select__field" type="text">
                                    <button class="product__options__bottom__quantity__btn">+</button>
                                </div>
                                <button id="button-cart" class="product__options__bottom__submit">
                                    <?php echo $button_cart; ?>
                                </button>
                                <div class="product__options__bottom__links">
                                    <ul>
                                        <li onclick="wishlist.add('<?php echo $product_id; ?>');">+ <?php echo $button_wishlist; ?></li>
                                        <li onclick="compare.add('<?php echo $product_id; ?>');">+ <?php echo $button_compare; ?></li>
                                        <li >+ Email to your friend</li>
                                    </ul>
                                </div>
                            </div>
                            <?php if ($minimum > 1) { ?>
                            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?>
                            </div>
                            <?php } ?>

                        </div>
                    </div>
                </div>
                <ul class="nav nav-tabs product__nav-tabs">
                    <li class="active"><a href="#tab-description"
                                          data-toggle="tab"><?php echo $tab_description; ?></a></li>
                    <?php if ($attribute_groups) { ?>
                    <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
                    <?php } ?>
                    <?php if ($review_status) { ?>
                    <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
                    <?php } ?>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
                    <?php if ($attribute_groups) { ?>
                    <div class="tab-pane" id="tab-specification">
                        <table class="table table-bordered">
                            <?php foreach ($attribute_groups as $attribute_group) { ?>
                            <thead>
                            <tr>
                                <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                            <tr>
                                <td><?php echo $attribute['name']; ?></td>
                                <td><?php echo $attribute['text']; ?></td>
                            </tr>
                            <?php } ?>
                            </tbody>
                            <?php } ?>
                        </table>
                    </div>
                    <?php } ?>
                    <?php if ($review_status) { ?>
                    <div class="tab-pane" id="tab-review">
                        <form class="form-horizontal" id="form-review">
                            <div id="review"></div>
                            <h2><?php echo $text_write; ?></h2>
                            <?php if ($review_guest) { ?>
                            <div class="form-group required">
                                <div class="col-sm-12">
                                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                    <input type="text" name="name" value="<?php echo $customer_name; ?>"
                                           id="input-name" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group required">
                                <div class="col-sm-12">
                                    <label class="control-label"
                                           for="input-review"><?php echo $entry_review; ?></label>
                                    <textarea name="text" rows="5" id="input-review"
                                              class="form-control"></textarea>
                                    <div class="help-block"><?php echo $text_note; ?></div>
                                </div>
                            </div>
                            <div class="form-group required">
                                <div class="col-sm-12">
                                    <label class="control-label"><?php echo $entry_rating; ?></label>
                                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                    <input type="radio" name="rating" value="1"/>
                                    &nbsp;
                                    <input type="radio" name="rating" value="2"/>
                                    &nbsp;
                                    <input type="radio" name="rating" value="3"/>
                                    &nbsp;
                                    <input type="radio" name="rating" value="4"/>
                                    &nbsp;
                                    <input type="radio" name="rating" value="5"/>
                                    &nbsp;<?php echo $entry_good; ?></div>
                            </div>
                            <?php echo $captcha; ?>
                            <div class="buttons clearfix">
                                <div class="pull-right">
                                    <button type="button" id="button-review"
                                            data-loading-text="<?php echo $text_loading; ?>"
                                            class="btn btn-primary"><?php echo $button_continue; ?></button>
                                </div>
                            </div>
                            <?php } else { ?>
                            <?php echo $text_login; ?>
                            <?php } ?>
                        </form>
                    </div>
                    <?php } ?>
                </div>
                <?php if ($products) { ?>
                <h3><?php echo $text_related; ?></h3>
                <div class="row">
                    <?php $i = 0; ?>
                    <?php foreach ($products as $product) { ?>
                    <?php if ($column_left && $column_right) { ?>
                    <?php $class = 'col-xs-8 col-sm-6'; ?>
                    <?php } elseif ($column_left || $column_right) { ?>
                    <?php $class = 'col-xs-6 col-md-4'; ?>
                    <?php } else { ?>
                    <?php $class = 'col-xs-6 col-sm-3'; ?>
                    <?php } ?>
                    <div class="<?php echo $class; ?>">
                        <div class="product-thumb transition">
                            <div class="image"><a href="<?php echo $product['href']; ?>"><img
                                            src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"
                                            title="<?php echo $product['name']; ?>" class="img-responsive"/></a></div>
                            <div class="caption">
                                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                                <p><?php echo $product['description']; ?></p>
                                <?php if ($product['rating']) { ?>
                                <div class="rating">
                                    <?php for ($j = 1; $j <= 5; $j++) { ?>
                                    <?php if ($product['rating'] < $j) { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                    <?php } else { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                class="fa fa-star-o fa-stack-1x"></i></span>
                                    <?php } ?>
                                    <?php } ?>
                                </div>
                                <?php } ?>
                                <?php if ($product['price']) { ?>
                                <p class="price">
                                    <?php if (!$product['special']) { ?>
                                    <?php echo $product['price']; ?>
                                    <?php } else { ?>
                                    <span class="price-new"><?php echo $product['special']; ?></span> <span
                                            class="price-old"><?php echo $product['price']; ?></span>
                                    <?php } ?>
                                    <?php if ($product['tax']) { ?>
                                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                    <?php } ?>
                                </p>
                                <?php } ?>
                            </div>
                            <div class="button-group">
                                <button type="button"
                                        onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                    <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i
                                            class="fa fa-shopping-cart"></i></button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>"
                                        onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i
                                            class="fa fa-heart"></i></button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>"
                                        onclick="compare.add('<?php echo $product['product_id']; ?>');"><i
                                            class="fa fa-exchange"></i></button>
                            </div>
                        </div>
                    </div>
                    <?php if (($column_left && $column_right) && (($i+1) % 2 == 0)) { ?>
                    <div class="clearfix visible-md visible-sm"></div>
                    <?php } elseif (($column_left || $column_right) && (($i+1) % 3 == 0)) { ?>
                    <div class="clearfix visible-md"></div>
                    <?php } elseif (($i+1) % 4 == 0) { ?>
                    <div class="clearfix visible-md"></div>
                    <?php } ?>
                    <?php $i++; ?>
                    <?php } ?>
                </div>
                <?php } ?>
                <?php if ($tags) { ?>
                <p><?php echo $text_tags; ?>
                    <?php for ($i = 0; $i < count($tags); $i++) { ?>
                    <?php if ($i < (count($tags) - 1)) { ?>
                    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                    <?php } else { ?>
                    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                    <?php } ?>
                    <?php } ?>
                </p>
                <?php } ?>
                <?php echo $content_bottom; ?></div>


        </div>
        <script type="text/javascript"><!--
            $('select[name=\'recurring_id\'], input[name="quantity"]').change(function () {
                $.ajax({
                    url: 'index.php?route=product/product/getRecurringDescription',
                    type: 'post',
                    data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
                    dataType: 'json',
                    beforeSend: function () {
                        $('#recurring-description').html('');
                    },
                    success: function (json) {
                        $('.alert, .text-danger').remove();

                        if (json['success']) {
                            $('#recurring-description').html(json['success']);
                        }
                    }
                });
            });
            //--></script>
        <script type="text/javascript"><!--

            function updateCart(json){
                const regEx = RegExp(/([^-]+)- (.+)/gm);
                const [_, amount, price] = regEx.exec(json['total']);
                $('.cart__price').html(price);
                $('.cart__items').html(amount);
            }
            $('#button-cart').on('click', function () {
                $.ajax({
                    url: 'index.php?route=checkout/cart/add',
                    type: 'post',
                    data: $('.product__options__select__field, .product__options__select__select'),
                    dataType: 'json',
                    beforeSend: function () {
                        $('#button-cart').button('loading');
                    },
                    complete: function () {
                        $('#button-cart').button('reset');
                    },
                    success: function (json) {
                        $('.alert, .text-danger').remove();
                        $('.form-group').removeClass('has-error');

                        if (json['error']) {
                            if (json['error']['option']) {
                                for (i in json['error']['option']) {
                                    var element = $('#input-option' + i.replace('_', '-'));

                                    if (element.parent().hasClass('input-group')) {
                                        element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                                    } else {
                                        element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                                    }
                                }
                            }

                            if (json['error']['recurring']) {
                                $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
                            }

                            // Highlight any found errors
                            $('.text-danger').parent().addClass('has-error');
                        }

                        if (json['success']) {
                            console.log(json);
                            $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                            updateCart(json);
                            $('html, body').animate({scrollTop: 0}, 'slow');

                            $('.cart > ul').load('index.php?route=common/cart/info ul li');
                        }
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            });
            //--></script>
        <script type="text/javascript"><!--
            $('.date').datetimepicker({
                pickTime: false
            });

            $('.datetime').datetimepicker({
                pickDate: true,
                pickTime: true
            });

            $('.time').datetimepicker({
                pickDate: false
            });

            $('button[id^=\'button-upload\']').on('click', function () {
                var node = this;

                $('#form-upload').remove();

                $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

                $('#form-upload input[name=\'file\']').trigger('click');

                if (typeof timer != 'undefined') {
                    clearInterval(timer);
                }

                timer = setInterval(function () {
                    if ($('#form-upload input[name=\'file\']').val() != '') {
                        clearInterval(timer);

                        $.ajax({
                            url: 'index.php?route=tool/upload',
                            type: 'post',
                            dataType: 'json',
                            data: new FormData($('#form-upload')[0]),
                            cache: false,
                            contentType: false,
                            processData: false,
                            beforeSend: function () {
                                $(node).button('loading');
                            },
                            complete: function () {
                                $(node).button('reset');
                            },
                            success: function (json) {
                                $('.text-danger').remove();

                                if (json['error']) {
                                    $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                                }

                                if (json['success']) {
                                    alert(json['success']);

                                    $(node).parent().find('input').val(json['code']);
                                }
                            },
                            error: function (xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                    }
                }, 500);
            });
            //--></script>
        <script type="text/javascript"><!--
            $('#review').delegate('.pagination a', 'click', function (e) {
                e.preventDefault();

                $('#review').fadeOut('slow');

                $('#review').load(this.href);

                $('#review').fadeIn('slow');
            });

            $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

            $('#button-review').on('click', function () {
                $.ajax({
                    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
                    type: 'post',
                    dataType: 'json',
                    data: $("#form-review").serialize(),
                    beforeSend: function () {
                        $('#button-review').button('loading');
                    },
                    complete: function () {
                        $('#button-review').button('reset');
                    },
                    success: function (json) {
                        $('.alert-success, .alert-danger').remove();

                        if (json['error']) {
                            $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                            $('input[name=\'name\']').val('');
                            $('textarea[name=\'text\']').val('');
                            $('input[name=\'rating\']:checked').prop('checked', false);
                        }
                    }
                });
                grecaptcha.reset();
            });

            $(document).ready(function () {
                $('.thumbnails').magnificPopup({
                    type: 'image',
                    delegate: 'a',
                    gallery: {
                        enabled: true
                    }
                });
            });

            $(document).ready(function () {
                var hash = window.location.hash;
                if (hash) {
                    var hashpart = hash.split('#');
                    var vals = hashpart[1].split('-');
                    for (i = 0; i < vals.length; i++) {
                        $('#product').find('select option[value="' + vals[i] + '"]').attr('selected', true).trigger('select');
                        $('#product').find('input[type="radio"][value="' + vals[i] + '"]').attr('checked', true).trigger('click');
                        $('#product').find('input[type="checkbox"][value="' + vals[i] + '"]').attr('checked', true).trigger('click');
                    }
                }
            })
            //--></script>
        <?php echo $social_links ?>
    </div>
    <?php echo $footer; ?></div>
