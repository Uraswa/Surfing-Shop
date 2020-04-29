$(document).ready(function () {

    const productImage = $('#product__image');

    productImage.owlCarousel({
        items: 1,
        mouseDrag: false,
        dots: false
    });

    $('#product__images').owlCarousel({
        dots: false,
        mouseDrag: false,
        touchDrag: false,
        loop: true,
        responsive: {
            0: {
                items: 2
            },
            486: {
                items: 3,
                margin: 5
            },
            998: {
                items: 3,
                margin: 30
            }
        }
    });

    $('.product__carousel__item').on('click', function () {
        productImage.trigger('to.owl.carousel', [$(this).attr('key'), 1])
    });

    $('.product__thumbs__carousel__btn').on('click', function () {
        console.log('f');
        $('#product__images').trigger(($(this).hasClass('back') ? 'prev' : 'next') + '.owl.carousel');
    });

    //product options
    $('.product__options__select__options div').on('click', function () {
        const select = $(this).parent().prev();
        let previous = 0;
        if (!select.attr('multiple')) {
            const selectedItem = $(this).parent().find(`.selected[value!=${$(this).attr('value')}]`).removeClass('selected');
            if (selectedItem.attr('money')){
                previous = selectedItem.attr('money').split(' ')[0];
            }
        }
        let [digit] = $(this).attr('money').split(' ');
        let [digit1, currency] = $('.product__info__sale_info__price').text().split(' ');
        if ($(this).toggleClass('selected').hasClass('selected')) {
            select.val(select.attr('multiple') ? [$(this).attr('value'), ...(select.val() || [])] : $(this).attr('value'));
            $('.product__info__sale_info__price').text((+digit + +digit1 - previous).toFixed(2) + ' ' + currency);
        } else {
            select.val(select.attr('multiple') ? select.val().filter(v => v !== $(this).attr('value')) : []);
            $('.product__info__sale_info__price').text((digit1 - digit).toFixed(2) + ' ' + currency);
        }
    });



    $('.product__options__bottom__quantity__btn').on('click', function () {
       const input = $(this).prev();
       input.val(+input.val() < 99 ? +input.val() + 1 : 99);
    });
});