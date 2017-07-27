<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="card">
            <div class="header">
                <h4 class="title"><?php echo lang('edit_user_heading');?></h4>
            </div>
            <div class="content">
                <?php echo form_open(uri_string());?>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('edit_user_fname_label', 'first_name');?></label>
                                <?php echo form_input($first_name, '', 'class="form-control"');?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('edit_user_lname_label', 'last_name');?> </label>
                                <?php echo form_input($last_name, '', 'class="form-control"');?>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('edit_user_company_label', 'company');?></label>
                                <?php echo form_input($company, '', 'class="form-control"');?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('edit_user_phone_label', 'phone');?></label>
                                <?php echo form_input($phone, '', 'class="form-control"');?>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('edit_user_password_label', 'password');?></label>
                                <?php echo form_input($password, '', 'class="form-control"');?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('edit_user_password_confirm_label', 'password_confirm');?></label>
                                <?php echo form_input($password_confirm, '', 'class="form-control"');?>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                          <?php if ($this->ion_auth->is_admin()): ?>

                              <h4><?php echo lang('edit_user_groups_heading');?></h4>
                              <?php foreach ($groups as $group):?>
                                  <label class="checkbox">
                                  <?php
                                      $gID=$group['id'];
                                      $checked = null;
                                      $item = null;
                                      foreach($currentGroups as $grp) {
                                          if ($gID == $grp->id) {
                                              $checked= ' checked="checked"';
                                          break;
                                          }
                                      }
                                  ?>
                                  <div class="checkbox">
                                    <label>
                                      <input class="form-control" type="checkbox" name="groups[]" value="<?php echo $group['id'];?>"<?php echo $checked;?>>
                                      <?php echo htmlspecialchars($group['name'],ENT_QUOTES,'UTF-8');?>
                                    </label>
                                  </div>


                                  </label>
                              <?php endforeach?>

                          <?php endif ?>
                        </div>
                    </div>
                    <?php echo form_hidden('id', $user->id);?>
                    <?php echo form_hidden($csrf); ?>
                    <?php echo form_submit('submit', lang('edit_user_submit_btn'), 'class="btn btn-info btn-fill"');?>
                    <div class="clearfix"></div>
                <?php echo form_close();?>
            </div>
        </div>
    </div>

</div>
<!--



<h1><?php echo lang('edit_user_heading');?></h1>
<p><?php echo lang('edit_user_subheading');?></p>

<div id="infoMessage"><?php echo $message;?></div>

<?php echo form_open(uri_string());?>

      <p>
            <?php echo lang('edit_user_fname_label', 'first_name');?> <br />
            <?php echo form_input($first_name);?>
      </p>

      <p>
            <?php echo lang('edit_user_lname_label', 'last_name');?> <br />
            <?php echo form_input($last_name);?>
      </p>

      <p>
            <?php echo lang('edit_user_company_label', 'company');?> <br />
            <?php echo form_input($company);?>
      </p>

      <p>
            <?php echo lang('edit_user_phone_label', 'phone');?> <br />
            <?php echo form_input($phone);?>
      </p>

      <p>
            <?php echo lang('edit_user_password_label', 'password');?> <br />
            <?php echo form_input($password);?>
      </p>

      <p>
            <?php echo lang('edit_user_password_confirm_label', 'password_confirm');?><br />
            <?php echo form_input($password_confirm);?>
      </p>

      <?php if ($this->ion_auth->is_admin()): ?>

          <h3><?php echo lang('edit_user_groups_heading');?></h3>
          <?php foreach ($groups as $group):?>
              <label class="checkbox">
              <?php
                  $gID=$group['id'];
                  $checked = null;
                  $item = null;
                  foreach($currentGroups as $grp) {
                      if ($gID == $grp->id) {
                          $checked= ' checked="checked"';
                      break;
                      }
                  }
              ?>
              <input type="checkbox" name="groups[]" value="<?php echo $group['id'];?>"<?php echo $checked;?>>
              <?php echo htmlspecialchars($group['name'],ENT_QUOTES,'UTF-8');?>
              </label>
          <?php endforeach?>

      <?php endif ?>

      <?php echo form_hidden('id', $user->id);?>
      <?php echo form_hidden($csrf); ?>

      <p><?php echo form_submit('submit', lang('edit_user_submit_btn'));?></p>

<?php echo form_close();?> -->
