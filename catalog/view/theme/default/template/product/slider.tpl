<div style="margin-bottom: 45px">
    <div class="slider__wrapper row">
        <div class="col-xs-12 col-md-11">
            <div class="owl-carousel owl-theme" style="background: transparent" id="main_carousel">
                <?php foreach($slides as $slide_item) { ?>
                <?php echo htmlspecialchars_decode($slide_item); ?>
                <?php } ?>
            </div>
        </div>

        <div class="hidden-xs col-xs-1" id="carousel__main__nav">

        </div>

    </div>
    <ul id="dots__container" class="owl-dots">

    </ul>
</div>
