<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-account" data-toggle="tooltip"
                        class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip"
                   class="btn btn-default"><i class="fa fa-reply"></i></a>
            </div>
            <h1><?php echo $heading_title; ?></h1>
        </div>
    </div>
    <div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> Edit</h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-account" class="form-horizontal">
                    <div class="form-group" style="padding: 0 10px">
                        <label class="control-label" for="slides_input"><?php echo $slides_text; ?></label>
                        <textarea class="form-control" name="main_carousel_slides" id="slides_input"  rows="30" ><?php echo $slides ?></textarea>
                    </div>
                    <p><?php echo $slides_format_text ?></p>
                </form>
            </div>
        </div>
    </div>
</div>
<?php echo $footer ?>