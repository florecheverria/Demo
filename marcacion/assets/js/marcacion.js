var userip;
jQuery(document).ready(function($){
  var estadoAnterior = '';
  var estadoNuevo = '';
  var guardarHora = '';
  var nombreEstado = '';
  var timer = new Timer();
  var logId = 0;
  // timer.start();
  timer.addEventListener('secondsUpdated', function (e) {
      $('#basicUsage').html(timer.getTimeValues().toString());
  });
  $('.cambiarEstado').click(function(){
    estadoAnterior = estadoNuevo;
    estadoNuevo = $(this).find('input[type="hidden"]').val();
    nombreEstado = $(this).find('input').val();
    $('#estiloActual').text(nombreEstado);
    console.log('estado nuevo ' + estadoNuevo + ' estado anterior ' + estadoAnterior);
    if(estadoAnterior == ''){
      timer.stop();
      timer.start();
      $.ajax({
				method: "POST",
				url: "marcacion/insert_log_actividad",
				data: { estadonuevo: estadoNuevo, logId: logId, userip: userip }
			})
			.done(function( res ) {
          logId = res;
				   console.log('1- insertado', res);
			});

    } else if(estadoAnterior != estadoNuevo){
      // guardarHora = horas+':'+minutos+':'+segundos;
      timer.stop();
      timer.start();

      $.ajax({
				method: "POST",
				url: "marcacion/insert_log_actividad",
				data: { estadonuevo: estadoNuevo, logId: logId, userip: userip }
			})
			.done(function( res ) {
          logId = res;
				   console.log('insertado', res);
			});
    }
  });

  $('#inicio').click(function(){
    timer.stop();
    timer.start();
  });
  $('#parar').click(function(){
    timer.stop();
  });
  $('#continuar').click(function(){
    timer.start();
  });
  $('#reinicio').click(function(){
    timer.stop();
    timer.start();
  });

  // var centesimas = 0;
  // var segundos = 0;
  // var minutos = 0;
  // var horas = 0;
  // function inicio () {
  // 	control = setInterval(cronometro,10);
  // 	// document.getElementById("inicio").disabled = true;
  // 	// document.getElementById("parar").disabled = false;
  // 	// document.getElementById("continuar").disabled = true;
  // 	// document.getElementById("reinicio").disabled = false;
  // }
  // function parar () {
  // 	clearInterval(control);
  // 	// document.getElementById("parar").disabled = true;
  // 	// document.getElementById("continuar").disabled = false;
  // }
  // function reinicio () {
  // 	clearInterval(control);
  // 	centesimas = 0;
  // 	segundos = 0;
  // 	minutos = 0;
  // 	horas = 0;
  // 	Centesimas.innerHTML = ":00";
  // 	Segundos.innerHTML = ":00";
  // 	Minutos.innerHTML = ":00";
  // 	Horas.innerHTML = "00";
  // 	// document.getElementById("inicio").disabled = false;
  // 	// document.getElementById("parar").disabled = true;
  // 	// document.getElementById("continuar").disabled = true;
  // 	// document.getElementById("reinicio").disabled = true;
  // }
  // function cronometro () {
  // 	if (centesimas < 99) {
  // 		centesimas++;
  // 		if (centesimas < 10) { centesimas = "0"+centesimas }
  // 		Centesimas.innerHTML = ":"+centesimas;
  // 	}
  // 	if (centesimas == 99) {
  // 		centesimas = -1;
  // 	}
  // 	if (centesimas == 0) {
  // 		segundos ++;
  // 		if (segundos < 10) { segundos = "0"+segundos }
  // 		Segundos.innerHTML = ":"+segundos;
  // 	}
  // 	if (segundos == 59) {
  // 		segundos = -1;
  // 	}
  // 	if ( (centesimas == 0)&&(segundos == 0) ) {
  // 		minutos++;
  // 		if (minutos < 10) { minutos = "0"+minutos }
  // 		Minutos.innerHTML = ":"+minutos;
  // 	}
  // 	if (minutos == 59) {
  // 		minutos = -1;
  // 	}
  // 	if ( (centesimas == 0)&&(segundos == 0)&&(minutos == 0) ) {
  // 		horas ++;
  // 		if (horas < 10) { horas = "0"+horas }
  // 		Horas.innerHTML = horas;
  // 	}
  // }




});
