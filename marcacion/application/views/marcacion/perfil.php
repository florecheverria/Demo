<div class="row" ng-app="app">
  <perfil></perfil>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular.min.js"></script>
<script>
  angular.module('app', [])
  .component('perfil',{
    templateUrl: '/ng-templates/perfil.html',
    bindings: {
    },
    controller: function(AgentsService) {
       var vm = this;
       var id = '<?php echo $id; ?>';
       // Called when component is ready, see below
       vm.$onInit = AgentsService.getPerfil(id).then(function(res) {
          vm.perfil = res.data;
          vm.nombre = vm.perfil[0].first_name +' '+vm.perfil[0].last_name;
          // console.log(vm.perfil)
          var fechas = fechasMapping();
          vm.fechasTotales = fechasTotalesMapping(fechas);
          console.log('fechas', fechas);
          console.log('fechas totales', vm.fechasTotales);
       });

       function fechasMapping() {
        var fechas = {};
        _.map(vm.perfil, function(e) {
          // usaremos la fecha como key del objeto
          var fechaKeyName = moment(e.log_inicio_fecha).format("YYYY-MM-DD");
          // sacaremos la diferencia entre inicio y fin de la actividad
          var a = moment(e.log_inicio_fecha, 'YYYY-MM-DD HH:mm:ss');
          var fechaFinal = e.log_fin_fecha ? e.log_fin_fecha : moment().add(6, 'h').format('YYYY-MM-DD HH:mm:ss');
          var b = fechaFinal;
          var diff = a.diff(b, 'minutes', false)
          e.diff = Math.abs(diff); // incluimos un nuevo campo en el objeto que iteramos
          // 
          fechas[fechaKeyName] = fechas[fechaKeyName] || [];
          // hacemos un push al array dentro del objeto
          fechas[fechaKeyName].push(e);   
          console.log(e.log_fin_fecha);      
        })
        return fechas;
       }
       function fechasTotalesMapping(fechas) {
        var fechasTotales = {};
        _.each(fechas, function(ele, key) {
           _.each(ele, function(e, k) {
            fechasTotales[key] = fechasTotales[key] || [];
            // hacemos un push al objeto
            var keyName = e.est_nombre.replace(/\s/g, '');
            fechasTotales[key][keyName] = fechasTotales[key][keyName] || 0; 
            fechasTotales[key][keyName] += e.diff; 
            fechasTotales[key][keyName +'Hora'] = toText(fechasTotales[key][keyName]);
            fechasTotales[key]['fecha'] = moment(key).format('YYYY-MM-DD');
           })
        })
        return fechasTotales;
       }
       /* Converts total in minutes to "hh:mm" format */
       function toText (m) {
           var minutes = m % 60;
           var hours = Math.floor(m / 60);

           minutes = (minutes < 10 ? '0' : '') + minutes;
           hours = (hours < 10 ? '0' : '') + hours;

           return hours + ':' + minutes;
       }
    }
  });
  // Servicio
  angular
    .module('app')
    .service('AgentsService', InboxService);

  function InboxService($http) {
    this.getAgents = function getAgents() {
      return $http.get('/marcacion/getAgents');
    };
    this.getPercentages = function getPercentages() {
      return $http.get('/marcacion/getPercentages');
    };
    this.getPerfil = function getPerfil(id) {
      return $http.get('/marcacion/getUserPerfil?id='+id);
    };
  }
</script>
