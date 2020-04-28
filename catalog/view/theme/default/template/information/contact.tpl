<div style="position: relative">
    <div style="position: absolute; top: 0; left: 0; z-index: 1; width: 100%">
        <div class="container"><?php echo $header; ?></div>
    </div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3554.5453972924424!2d56.22638316393333!3d58.01246651148844!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sru!4v1586714291305!5m2!1sru!2sru"
             allowfullscreen=""
            width="100%" height="350" frameborder="0" style="border:0; border:0; -webkit-filter: grayscale(100%);filter: grayscale(100%);" allowfullscreen="" aria-hidden="false"
            tabindex="0"></iframe>
</div>

<div class="container">
    <!--<ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>!-->
    <div class="row">
        <?php $column_left = $column_left ? $column_left : "net" ?>
        <?php if ($column_left == "net") { ?>
            <div class="col-sm-3">
                <?php echo $menu ?>
                <?php echo $open_banner ?>
            </div>
        <? } else { ?>
            <?php echo $column_left; ?>
        <?php } ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?> contact_page"><?php echo $content_top; ?>
            <?php echo $breadcrumbs_module ?>
            <div class="row">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal col-sm-6 conact_page__form">
                    <fieldset>
                        <div class="contact_page__form__block">
                            <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                            <div class="">
                                <input type="text" name="name" value="<?php echo $name; ?>" id="input-name"
                                       class="shop-input"/>
                                <?php if ($error_name) { ?>
                                <div class="text-danger"><?php echo $error_name; ?></div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="contact_page__form__block">
                            <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                            <div class="">
                                <input type="text" name="email" value="<?php echo $email; ?>" id="input-email"
                                       class="shop-input"/>
                                <?php if ($error_email) { ?>
                                <div class="text-danger"><?php echo $error_email; ?></div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="contact_page__form__block">
                            <label class="control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
                            <div class="">
                            <textarea name="enquiry" rows="10" id="input-enquiry"
                                      class="shop-input"><?php echo $enquiry; ?></textarea>
                                <?php if ($error_enquiry) { ?>
                                <div class="text-danger"><?php echo $error_enquiry; ?></div>
                                <?php } ?>
                            </div>
                        </div>
                        <?php echo $captcha; ?>
                    </fieldset>
                    <div class="buttons">
                        <div class="pull-right">
                            <input class="product__options__bottom__submit" type="submit" value="<?php echo $button_submit; ?>"/>
                        </div>
                    </div>
                </form>
                <div class="col-sm-6">
                    <div class="contact_page__info">
                        <div class="contact_page__info__address">
                            <h5>adress</h5>
                            <div class="contact_page__info__address__address">
                                <div>
                                    <img src="image/catalog/location.png" alt="">
                                </div>
                                <div>
                                    <?php echo $address ?>
                                </div>
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus, numquam.
                            </div>
                        </div>
                        <div class="contact_page__info__tel">
                            <img src="image/catalog/tel.png" alt="" style="margin-right: 20px"><a href="tel:<?php echo $telephone ?>"><?php echo $telephone ?></a>
                        </div>
                        <div class="contact_page__info__mail">
                            <img src="image/catalog/mail.png" style="margin-right: 20px" alt=""><a href="mailto:zanin.vowa2015@yandex.ru">vowa2015@yandex.ru</a>
                        </div>
                        <div class="contact_page__info__questions">
                            <?php echo $text_to_actions ?>
                        </div>
                    </div>
                </div>
            </div>
            
            <?php if ($locations) { ?>
            <h3><?php echo $text_store; ?></h3>
            <div class="panel-group" id="accordion">
                <?php foreach ($locations as $location) { ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>"
                                                   class="accordion-toggle" data-toggle="collapse"
                                                   data-parent="#accordion"><?php echo $location['name']; ?> <i
                                        class="fa fa-caret-down"></i></a></h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
                        <div class="panel-body">
                            <div class="row">
                                <?php if ($location['image']) { ?>
                                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>"
                                                           alt="<?php echo $location['name']; ?>"
                                                           title="<?php echo $location['name']; ?>"
                                                           class="img-thumbnail"/></div>
                                <?php } ?>
                                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br/>
                                    <address>
                                        <?php echo $location['address']; ?>
                                    </address>
                                    <?php if ($location['geocode']) { ?>
                                    <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15"
                                       target="_blank" class="btn btn-info"><i
                                                class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                                    <?php } ?>
                                </div>
                                <div class="col-sm-3"><strong><?php echo $text_telephone; ?></strong><br>
                                    <?php echo $location['telephone']; ?><br/>
                                    <br/>
                                    <?php if ($location['fax']) { ?>
                                    <strong><?php echo $text_fax; ?></strong><br>
                                    <?php echo $location['fax']; ?>
                                    <?php } ?>
                                </div>
                                <div class="col-sm-3">
                                    <?php if ($location['open']) { ?>
                                    <strong><?php echo $text_open; ?></strong><br/>
                                    <?php echo $location['open']; ?><br/>
                                    <br/>
                                           <?php } ?>
                                    <?php if ($location['comment']) { ?>
                                    <strong><?php echo $text_comment; ?></strong><br/>
                                    <?php echo $location['comment']; ?>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <?php } ?>
            <div style="margin-top: 65px"><?php echo $brands ?></div>
            <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?></div>
        <div style="margin-top: 40px">
            <?php echo $social_links ?>
        </div>

</div>
<?php echo $footer; ?>
