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
        if (!select.attr('multiple')) {
            $(this).parent().find(`.selected[value!=${$(this).attr('value')}]`).removeClass('selected')
        }
        if ($(this).toggleClass('selected').hasClass('selected')) {
            select.val(select.attr('multiple') ? [$(this).attr('value'), ...(select.val() || [])] : $(this).attr('value'));
        } else {
            select.val(!select.attr('multiple') ? [] : select.val().filter(v => v !== $(this).attr('value')));
        }
    });
});