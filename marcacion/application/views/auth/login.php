
                <div class="row">

                    <div class="col-md-4 col-md-offset-4">
                        <div class="card card-user">
                          <?php echo form_open("auth/login");?>
                            <div class="image">
                                <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                     <a href="#">
                                    <img class="avatar border-gray" src="<?php echo base_url() ?>assets/img/faces/face-3.jpg" alt="..."/>

                                      <h4 class="title">Login<br />
                                         <small></small>
                                      </h4>
                                    </a>
                                </div>
                                <p class="description text-center">
                                  <p>
                                    <?php echo lang('login_identity_label', 'identity');?>
                                    <?php echo form_input($identity, '', 'class="form-control"');?>
                                  </p>

                                  <p>
                                    <?php echo lang('login_password_label', 'password');?>
                                    <?php echo form_input($password, '', 'class="form-control"');?>
                                  </p>

                                  <p>
                                    <?php echo lang('login_remember_label', 'remember');?>
                                    <?php echo form_checkbox('remember', '1', FALSE, 'id="remember"');?>
                                  </p>
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <p><?php echo form_submit('submit', lang('login_submit_btn'), 'class="btn btn-info btn-fill"');?></p>
                                <br>
                            </div>
                          <?php echo form_close();?>
                        </div>
                        <div id="infoMessage"><?php echo $message;?></div>
                    </div>

                </div>
