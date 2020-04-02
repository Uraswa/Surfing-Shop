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
                            <div class="product__img"><img src="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"
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
                                    <img  src="image/catalog/arrow-left-big.png" alt="">
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
                                        <img  src="image/catalog/arrow-right-big.png" alt="">
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
                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x" ></i></span>
                                    <?php } else { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x" style="color: black"></i><i
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
                        </div>
                    </div>
                </div>
                <ul class="nav nav-tabs">
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
            $('#button-cart').on('click', function () {
                $.ajax({
                    url: 'index.php?route=checkout/cart/add',
                    type: 'post',
                    data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
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
                            $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                            $('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

                            $('html, body').animate({scrollTop: 0}, 'slow');

                            $('#cart > ul').load('index.php?route=common/cart/info ul li');
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
