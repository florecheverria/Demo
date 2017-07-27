<div id="infoMessage"><?php echo $message;?></div>
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="card">
            <div class="header">
                <h4 class="title"><?php echo lang('edit_group_heading');?></h4>
            </div>
            <div class="content">
                <?php echo form_open(current_url());?>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label><?php echo lang('edit_group_name_label', 'group_name');?></label>
                                <?php echo form_input($group_name, '', 'class="form-control"');?>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label><?php echo lang('edit_group_desc_label', 'description');?></label>
                                <?php echo form_input($group_description, '', 'class="form-control"');?>
                            </div>
                        </div>
                    </div>

                    <?php echo form_submit('submit', lang('edit_group_submit_btn'), 'class="btn btn-info btn-fill"');?>
                    <div class="clearfix"></div>
                <?php echo form_close();?>
            </div>
        </div>
    </div>

</div>
