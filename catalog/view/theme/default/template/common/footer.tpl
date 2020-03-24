<footer>
    <div class="footer__content">
        <div class="container">
            <div class="row">
                <?php if ($informations) { ?>
                <div class="col-sm-4 col-lg-2">
                    <h5 class="footer__col_title raleway"><?php echo $text_information; ?></h5>
                    <ul class="list-unstyled">
                        <?php foreach ($informations as $information) { ?>
                        <li><a href="<?php echo $information['href']; ?>"
                               class="footer__col_content"><?php echo $information['title']; ?></a></li>
                        <?php } ?>
                    </ul>
                </div>
                <?php } ?>
                <div class="col-sm-4 col-lg-2">
                    <h5 class="footer__col_title raleway"><?php echo $text_service; ?></h5>
                    <ul class="list-unstyled">
                        <li><a href="<?php echo $contact; ?>"
                               class="footer__col_content"><?php echo $text_contact; ?></a></li>
                        <li><a href="<?php echo $return; ?>" class="footer__col_content"><?php echo $text_return; ?></a>
                        </li>
                        <li><a href="<?php echo $sitemap; ?>"
                               class="footer__col_content"><?php echo $text_sitemap; ?></a></li>
                    </ul>
                </div>
                <div class="col-sm-4 col-lg-2">
                    <h5 class="footer__col_title raleway"><?php echo $text_extra; ?></h5>
                    <ul class="list-unstyled">
                        <li><a href="<?php echo $manufacturer; ?>"
                               class="footer__col_content"><?php echo $text_manufacturer; ?></a></li>
                        <li><a href="<?php echo $voucher; ?>"
                               class="footer__col_content"><?php echo $text_voucher; ?></a></li>
                        <li><a href="<?php echo $affiliate; ?>"
                               class="footer__col_content"><?php echo $text_affiliate; ?></a></li>
                        <li><a href="<?php echo $special; ?>"
                               class="footer__col_content"><?php echo $text_special; ?></a></li>
                    </ul>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <h5 class="footer__col_title footer__col_title__newsletter raleway"><?php echo $text_newsletter; ?></h5>
                    <div>
                        Join thousands of other people subscribe to our news
                    </div>
                    <div class="footer__pay">
                        <img src="image/catalog/aex.png" alt="" class="footer__pay__img">
                        <img src="image/catalog/mastercard.png" alt="" class="footer__pay__img">
                        <img src="image/catalog/maestero.png" aldt="" class="footer__pay__img">
                        <img src="image/catalog/paypal.png" alt="" class="footer__pay__img">
                        <img src="image/catalog/discover.png" alt="" class="footer__pay__img">
                        <img src="image/catalog/visa_straight.png" alt="" class="footer__pay__img">
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <h5 class="footer__col_title footer__col_title__about raleway"><?php echo $informations[0]['title']?></h5>
                    <p class="footer__about_text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
                        commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient
                        montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
                        sem. </p>
                    <div class="footer__about__phone"><?php echo $text_phone?>: <a href="tel:79194898124">+7 (919) 4898
                            124</a></div>
                    <div class="footer__about__email">e-mail: <a href="mailto:zanin.vowa2015@yandex.ru"
                                                                 class="text-yellow">zanin.vowa2015@yandex.ru</a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="bg-dark footer__powered__wrappper">
        <div class="container">
            <div class="footer__down">
                <p class="footer__powered raleway"><?php echo $powered; ?></p>
                <div class="footer__down__icons">
                    <a href="https://instagram.com"><img src="image/catalog/insta_icon.png" alt="" class="footer__down__icon"></a><a href="https://youtube.com"><img
                                src="image/catalog/youtube_icon.png"
                                alt=""
                                class="footer__down__icon"></a><a href="https://facebook.com"><img
                                src="image/catalog/facebook_icon.png" alt="" class="footer__down__icon"></a><a href="https://twitter.com"><img
                                src="image/catalog/twitter_icon.png"
                                alt=""
                                class="footer__down__icon"></a><a href="https://pinterest.com"><img
                                src="image/catalog/pinterest_icon.png" alt="" class="footer__down__icon"></a>
                </div>
            </div>
        </div>
    </div>

</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<script src="catalog/view/javascript/owl.carousel.min.js"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
</body></html>