<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="card">
            <div class="header">
                <h4 class="title"><?php echo lang('create_user_heading');?></h4>
            </div>
            <div class="content">
                <?php echo form_open("auth/create_user");?>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('create_user_fname_label', 'first_name');?></label>
                                <?php echo form_input($first_name, '', 'class="form-control"');?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('create_user_lname_label', 'last_name');?> </label>
                                <?php echo form_input($last_name, '', 'class="form-control"');?>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('create_user_company_label', 'company');?></label>
                                <?php echo form_input($company, '', 'class="form-control"');?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('create_user_phone_label', 'phone');?></label>
                                <?php echo form_input($phone, '', 'class="form-control"');?>
                            </div>
                        </div>
                    </div>



                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label><?php echo lang('create_user_email_label', 'email');?></label>
                                <?php echo form_input($email, '', 'class="form-control"');?>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('create_user_password_label', 'password');?></label>
                                <?php echo form_input($password, '', 'class="form-control"');?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('create_user_password_confirm_label', 'password_confirm');?></label>
                                <?php echo form_input($password_confirm, '', 'class="form-control"');?>
                            </div>
                        </div>
                    </div>

                    <?php echo form_submit('submit', lang('create_user_submit_btn'), 'class="btn btn-info btn-fill"');?>
                    <!-- <button type="submit" class="btn btn-info btn-fill pull-right">Update Profile</button> -->
                    <div class="clearfix"></div>
                <?php echo form_close();?>
            </div>
        </div>
    </div>

</div>
