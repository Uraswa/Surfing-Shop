
  <div id="collapse-coupon" style="margin-bottom: 20px">
    <h4 class="coupon__title"><?php echo $heading_title ?></h4>
    <div >
      <div class="row">
        <div class="col-xs-12 col-sm-5"><input type="text" name="coupon" value="<?php echo $coupon; ?>" placeholder="<?php echo $entry_coupon; ?>"
                  id="input-coupon" class="shop-input coupon__input"/></div>
        <div  class="col-xs-12 col-sm-offset-1 col-sm-6" style="text-align: end">
          <button id="button-coupon"><?php echo $entry_submit ?></button>
          <a href="" class="coupon__shopping"><?php echo $text_continue ?></a>
        </div>
      </div>
    </div>
  </div>
    <script type="text/javascript"><!--
      $('#button-coupon').on('click', function() {
        $.ajax({
          url: 'index.php?route=extension/total/coupon/coupon',
          type: 'post',
          data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
          dataType: 'json',
          beforeSend: function() {
            $('#button-coupon').button('loading');
          },
          complete: function() {
            $('#button-coupon').button('reset');
          },
          success: function(json) {
            $('.alert').remove();

            if (json['error']) {
              $('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

              $('html, body').animate({ scrollTop: 0 }, 'slow');
            }

            if (json['redirect']) {
              location = json['redirect'];
            }
          }
        });
      });
      //--></script>

