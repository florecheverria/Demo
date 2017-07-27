<div id="contenedor">
		<!-- <div class="reloj" id="Centesimas" style="display:none;">:00</div> -->
		<!-- <input type="button" class="boton" id="inicio" value="Start &#9658;">
		<input type="button" class="boton" id="parar" value="Stop &#8718;" disabled>
		<input type="button" class="boton" id="continuar" value="Resume &#8634;" disabled>
		<input type="button" class="boton" id="reinicio" value="Reset &#8635;" disabled> -->
	</div>
<?php //echo 'mi usuario '.$user->id; ?>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="header">
                <h2 class="title">Hoy</h2>
                <p class="category">Tu estado es <a id="estiloActual">No iniciado</a>:
                  <div id="basicUsage">00:00:00</div>
                </p>
            </div>
            <div class="content all-icons"><br><br><br>
							<div class="row">

							<?php foreach ($estados as $est):?>

							 <a class="cambiarEstado" href="#">
                  <div class="font-icon-list col-lg-2 col-md-2 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail"><i class="<?php echo $est->est_icon;?>"></i>
                      <input type="text" value="<?php echo $est->est_nombre;?>">
                      <input type="hidden" value="<?php echo $est->est_id;?>">
                    </div>
                  </div>
                </a>
			 		 		<?php endforeach;?>

							</div>

                </div>

            </div>
        </div>
    </div>

      <script src="https://cdnjs.cloudflare.com/ajax/libs/easy-countdown/2.2.0/countdown.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/easy-countdown/2.2.0/jquery.countdown.min.js"></script>
      <script src="<?php echo base_url() ?>assets/js/timer.min.js"></script>
      <script src="<?php echo base_url() ?>assets/js/marcacion.js"></script>
			<script type="text/javascript" src="https://l2.io/ip.js?var=userip"></script>
			
