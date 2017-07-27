<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<script src="https://js.pusher.com/4.1/pusher.min.js"></script>
<script>

  
</script>
<div class="row" ng-app="app">
    <div class="col-md-12">
        <div class="card">
            <div class="header">
                <h2 class="title">Estados de Agentes</h2>
                <!-- <p class="category">Tu estado es <a>Disponible</a>: <b>3:05 h</b></p> -->
            </div>
            
            <porcentajes></porcentajes>
            </div>
        </div>
    <agentes></agentes>
</div>
<!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular.min.js"></script>
<script>
  setTimeout(function() {
    $(document).ready(function() {
      $('#agentesTabla').DataTable();
    } );
  }, 1500)
</script>
<script>
  // Enable pusher logging - don't include this in production
  // Pusher.logToConsole = true;
  // inicializando pusher para datos en tiempo real
  var pusher = new Pusher('562dbec2971a2ed92bdf', {
    cluster: 'us2',
    encrypted: true
  });
  //
  angular.module('app', [])
  .component('agentes',{
    templateUrl: '/ng-templates/empleados.html',
    bindings: {
      agents: '<'
    },
    controller: function(AgentsService) {
       var vm = this;
       // Called when component is ready, see below
        vm.$onInit = AgentsService.getAgents().then(function(res) {
          vm.agents = _.uniqBy(res.data, function (e) {
                        return e.id;
                      });
        })
        // conectandonos a el canal
        var channel = pusher.subscribe('porcentajes');
        channel.bind('agentes-event', function(data) {
          AgentsService.getAgents().then(function(res) {
            vm.agents = _.uniqBy(res.data, function (e) {
                          return e.id;
                        });
          })
        });
    }
  })
  .component('porcentajes', {
    templateUrl: '/ng-templates/porcentajes-dashboard.html',
    bindings: {
      percentages: '<',
      disponibleP: '<',
      llamadaP: '<',
      noDisponibleP: '<',
      reunionP: '<',
      almuerzoP: '<',
    },
    controller: function(AgentsService) {
      var vm = this;
      // Called when component is ready, see below
      vm.$onInit = AgentsService.getPercentages().then(function(res) {
        cargarDatos(res);
      })
      // conectandonos a el canal
      var channel = pusher.subscribe('porcentajes');
      channel.bind('agentes-event', function(data) {
        AgentsService.getPercentages().then(function(res) {
          cargarDatos(res);
        })
      });

      // cargando datos
      function cargarDatos(res) {
        vm.percentages = _.uniqBy(res.data, function (e) {
                            return e.log_usu_id;
                          });
        // cantidad total de estados
        var totalEstados = vm.percentages.length;
        // creamos arreglos para cada uno de los estados
        var disponible = _.filter(vm.percentages, function(p) {
          return p.est_id == 1; }
        );
        var noDisponible = _.filter(vm.percentages, function(p) {
          return p.est_id == 2; }
        );
        var llamada = _.filter(vm.percentages, function(p) {
          return p.est_id == 3; }
        );
        var reunion = _.filter(vm.percentages, function(p) {
          return p.est_id == 4; }
        );
        var almuerzo = _.filter(vm.percentages, function(p) {
          return p.est_id == 5; }
        );

        vm.disponibleP = parseFloat((disponible.length / totalEstados) * 100).toFixed(2);
        vm.llamadaP = parseFloat((llamada.length / totalEstados) * 100).toFixed(2);
        vm.noDisponibleP = parseFloat((noDisponible.length / totalEstados) * 100).toFixed(2);
        vm.reunionP = parseFloat((reunion.length / totalEstados) * 100).toFixed(2);
        vm.almuerzoP = parseFloat((almuerzo.length / totalEstados) * 100).toFixed(2);
      }
    }
  })
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
  }
</script>
