<style>
    .left-col > ul:first-of-type {
        margin-top: 0;
    }
</style>
<div class="page-container-small" style='background-image: url("https://i1.wp.com/www.surfer.com/wp-content/uploads/2019/12/laura.jpg?resize=1920%2C1080&ssl=1"); object-fit: contain'
>
    <div class="container" >
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
                <?php if ($success) { ?>
                <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
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
                        <div class="row">
                            <div class="col-sm-9">
                                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                    <div class="table-responsive">
                                        <table class="table table-bordered cart__table" >
                                            <thead>
                                            <tr >
                                                <td class="text-left"><?php echo $column_name; ?></td>
                                                <td class="text-left"><?php echo $column_quantity; ?></td>
                                                <td class="text-right"><?php echo $column_price; ?></td>
                                                <td class="text-right"><?php echo $column_total; ?></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <?php foreach ($products as $product) { ?>
                                            <tr class="product__row">

                                                <td  class="text-left product__row__info" >
                                                    <div class="product__row__info__img">
                                                        <?php if ($product['thumb']) { ?>
                                                        <a href="<?php echo $product['href']; ?>"><img
                                                                    src="<?php echo $product['thumb']; ?>"
                                                                    alt="<?php echo $product['name']; ?>"
                                                                    title="<?php echo $product['name']; ?>" class="img-thumbnail"/></a>
                                                        <?php } ?>
                                                    </div>
                                                    <div>
                                                        <a
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
                                                <td class="text-left">
                                                    <div class="input-group btn-block" style="max-width: 200px;">
                                                        <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]"
                                                               value="<?php echo $product['quantity']; ?>" size="1"
                                                               class="form-control"/>
                                                        <span class="input-group-btn">
                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>"
                            class="btn btn-primary"><i class="fa fa-refresh"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>"
                            class="btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i
                                class="fa fa-times-circle"></i></button>
                    </span></div>
                                                </td>
                                                <td class="text-right"><?php echo $product['price']; ?></td>
                                                <td class="text-right"><?php echo $product['total']; ?></td>
                                            </tr>
                                            <?php } ?>
                                            <?php foreach ($vouchers as $voucher) { ?>
                                            <tr>
                                                <td></td>
                                                <td class="text-left"><?php echo $voucher['description']; ?></td>
                                                <td class="text-left"></td>
                                                <td class="text-left">
                                                    <div class="input-group btn-block" style="max-width: 200px;">
                                                        <input type="text" name="" value="1" size="1" disabled="disabled"
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
                            </div>
                            <div class="col-sm-3">
                                123
                            </div>
                        </div>

                        <?php if ($modules) { ?>
                        <h2><?php echo $text_next; ?></h2>
                        <p><?php echo $text_next_choice; ?></p>
                        <div class="panel-group" id="accordion">
                            <?php foreach ($modules as $module) { ?>
                            <?php echo $module; ?>
                            <?php } ?>
                        </div>
                        <?php } ?>
                        <br/>
                        <div class="row">
                            <div class="col-sm-4 col-sm-offset-8">
                                <table class="table table-bordered">
                                    <?php foreach ($totals as $total) { ?>
                                    <tr>
                                        <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
                                        <td class="text-right"><?php echo $total['text']; ?></td>
                                    </tr>
                                    <?php } ?>
                                </table>
                            </div>
                        </div>
                        <div class="buttons clearfix">
                            <div class="pull-left"><a href="<?php echo $continue; ?>"
                                                      class="btn btn-default"><?php echo $button_shopping; ?></a></div>
                            <div class="pull-right"><a href="<?php echo $checkout; ?>"
                                                       class="btn btn-primary"><?php echo $button_checkout; ?></a></div>
                        </div>
                        <?php echo $content_bottom; ?></div>
                </div>
                <?php echo $column_right; ?></div>
        </div>
        <?php echo $brands ?>
    </div>

    <?php echo $footer; ?>
</div>