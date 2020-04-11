<style>
    .left-col > ul:first-of-type {
        margin-top: 0;
    }
</style>
<div class="page-container-small"
     style='background-image: url("https://i1.wp.com/www.surfer.com/wp-content/uploads/2019/12/laura.jpg?resize=1920%2C1080&ssl=1"); object-fit: contain'
>
    <div class="container">
        <?php echo $header; ?>

        <div class="row" style="margin-top: 35px">
            <div class="col-sm-3 left-col">
                <?php
                    echo $menu;
                    echo $category_options;
                    echo $manufacturer_left_list;
                    echo $open;
                ?>
            </div>

            <div class="col-sm-9" style="background:#F8F8F8;">
                <!--
                    <ul class="breadcrumb">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <?php } ?>
                    </ul>
                !-->
                <?php echo $order_path ?>
                <?php if ($attention) { ?>
                <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
                <?php } ?>
                <?php if ($error_warning) { ?>
                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
                <?php } ?>
                <div class="row"><?php echo $column_left; ?>
                    <?php if ($column_left && $column_right) { ?>
                    <?php $class = 'col-sm-6'; ?>
                    <?php } elseif ($column_left || $column_right) { ?>
                    <?php $class = 'col-sm-9'; ?>
                    <?php } else { ?>
                    <?php $class = 'col-sm-12'; ?>
                    <?php } ?>
                    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                        <div class="row cart__table__wrapper__wrapper">
                            <div class="col-xs-12 col-md-8 cart__table__wrapper" >
                                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                    <div class="table-responsive">
                                        <table class="table table-bordered cart__table">
                                            <thead>
                                            <tr>
                                                <td class="text-left"><?php echo $column_name; ?></td>
                                                <td class="text-left"><?php echo $column_price; ?></td>
                                                <td class="text-left"><?php echo $column_quantity; ?></td>
                                                <td class="text-left"><?php echo $column_total; ?></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <?php foreach ($products as $product) { ?>
                                            <tr class="product__row">

                                                <td class="text-left product__row__info">
                                                    <div class="product__row__info__img">
                                                        <?php if ($product['thumb']) { ?>
                                                        <a href="<?php echo $product['href']; ?>"><img
                                                                    src="<?php echo $product['thumb']; ?>"
                                                                    alt="<?php echo $product['name']; ?>"
                                                                    title="<?php echo $product['name']; ?>"
                                                                    class="img-thumbnail"/></a>
                                                        <?php } ?>
                                                    </div>
                                                    <div>
                                                        <a class="product__row__info__title"
                                                           href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                                        <?php if (!$product['stock']) { ?>
                                                        <span class="text-danger">***</span>
                                                        <?php } ?>
                                                        <?php if ($product['option']) { ?>

                                                        <?php foreach ($product['option'] as $option) { ?>
                                                        <br/>
                                                        <small><?php echo $option['value']; ?></small>
                                                        <?php } ?>
                                                        <?php } ?>
                                                    </div>

                                                </td>
                                                <td class="text-left"><?php echo $product['price']; ?></td>
                                                <td class="text-left">
                                                    <div class="input-group btn-block" style="max-width: 200px;">

                                                        <div class="product__options__bottom__quantity">
                                                            <input minimum="<?php echo $product['minimum'] ?>" maxlength="2" minlength="1" id="input-quantity" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" class="product__options__select__field" type="text">
                                                            <button id="cart__quantity__btn" class="product__options__bottom__quantity__btn">+</button>
                                                        </div>
                                                </td>
                                                <td class="text-left"><?php echo $product['total']; ?> <img onclick="cart.remove('<?php echo $product['cart_id']; ?>');" class="cart__detele__row" style="cursor: pointer" height="10" src="image/catalog/close.svg"/></td>
                                            </tr>
                                            <?php } ?>
                                            <?php foreach ($vouchers as $voucher) { ?>
                                            <tr>
                                                <td></td>
                                                <td class="text-left"><?php echo $voucher['description']; ?></td>
                                                <td class="text-left"></td>
                                                <td class="text-left">
                                                    <div class="input-group btn-block" style="max-width: 200px;">
                                                        <input type="text" name="" value="1" size="1"
                                                               disabled="disabled"
                                                               class="form-control"/>
                                                        <span class="input-group-btn">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>"
                            class="btn btn-danger" onclick="voucher.remove('<?php echo $voucher['key']; ?>');"><i
                                class="fa fa-times-circle"></i></button>
                    </span></div>
                                                </td>
                                                <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                                <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                            </tr>
                                            <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </form>
                                <?php if ($modules) { ?>
                                <?php echo $modules[0] ?>
                                <?php } ?>
                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="cart__block">
                                    <div class="cart__block__review"><?php echo $text_review ?></div>
                                    <div class="cart__block__row"><div><?php echo $text_your_cart ?></div><div><?php echo $cart_price ?></div></div>
                                    <div class="cart__block__row"><div><?php echo $text_var ?></div><div><?php echo $taxes ?></div></div>
                                    <div class="cart__block__row"><div><?php echo $text_total ?></div><div><?php echo $total ?></div></div>
                                    <a href="<?php echo $checkout ?>" class="cart__block__checkout"><?php echo $text_order; ?></a>
                                </div>
                            </div>
                        </div>
                        <?php echo $related_products ?>
                        <?php echo $recently_viewed ?>
                        <?php echo $content_bottom; ?></div>
                </div>
                <?php echo $column_right; ?></div>
        </div>
        <?php echo $brands ?>
    </div>

    <?php echo $footer; ?>
    <script>
        $(document).ready(function () {
            $('#cart__quantity__btn').on('click', function (e) {
                // e.preventDefault();
                const input = $(`#input-quantity`);
                input.val(+input.val() < 99 ? +input.val() + 1 : 99);
            });

            $('#input-quantity').on('change', function (e) {
               const minimum =  $(this).attr('minimum');
               if ($(this).val() < minimum) {
                   $(this).val(minimum)
               }
            });
        });
    </script>
</div>