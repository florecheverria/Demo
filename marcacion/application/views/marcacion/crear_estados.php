<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/angular-xeditable/0.8.0/css/xeditable.css">

<div class="row" ng-app="app">
  <div class="col-md-12">
      <div class="card">
          <div class="header">
              <h2 class="title">Estados</h2>
              <!-- <p class="category">Tu estado es <a>Disponible</a>: <b>3:05 h</b></p> -->
          </div>
          <estados></estados>
      </div>
  </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-xeditable/0.8.0/js/xeditable.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pnotify/3.2.0/pnotify.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pnotify/3.2.0/pnotify.confirm.js"></script>
<script>
  angular.module('app', ["xeditable"])
  .component('estados',{
    templateUrl: '/ng-templates/estados.html',
    bindings: {
    },
    controller: function(EstadosService) {
       var vm = this;
       // Called when component is ready, see below
        vm.$onInit = EstadosService.getEstados().then(function(res) {
          vm.estados = res.data
          vm.nEstado = '';
          vm.iEstado = '';
          vm.cEstado = '';
          vm.agregarEstado = false;
          // vm.estado_nombre = '';
        })

        vm.editEstado = function (id) {
          (new PNotify({
              title: 'Borrar Estado',
              text: 'Estas seguro?',
              // styling: 'fontawesome',
              icon: true,
              hide: false,
              confirm: {
                  confirm: true
              },
              buttons: {
                  closer: false,
                  sticker: false
              },
              history: {
                  history: false
              }
          })).get().on('pnotify.confirm', function() {
              EstadosService.deleteEstado(id).then(function() {
                EstadosService.getEstados().then(function(res) {
                  vm.estados = res.data
                })
              });
          }).on('pnotify.cancel', function() {
              // alert('Oh ok. Chicken, I see.');
          });
        }
        vm.updateEstadoNombre = function(data, valor) {
          EstadosService.updateEstadoNombre(valor, data.est_id);
        }
        vm.updateEstadoIcono = function(data, valor) {
          EstadosService.updateEstadoIcono(valor, data.est_id)
        }
        vm.crearEstado = function() {
          console.log(vm.nEstado, 'nEstado')
          if(vm.nEstado == '' || vm.iEstado == '' || vm.cEstado == '') {
            alert('Faltan campos por llenar!');
          } else {
            var estado = {
              est_nombre: vm.nEstado,
              est_icon: vm.iEstado,
              est_color: vm.cEstado,
            }
            EstadosService.crearEstado(estado).then(function() {
              EstadosService.getEstados().then(function(res) {
                  vm.estados = res.data
                  vm.agregarEstado = false;
                  vm.nEstado = '';
                  vm.iEstado = '';
                  vm.cEstado = '';
                })
            })
          }
        }
    }
  }).service('EstadosService', EstadosService);

  function EstadosService($http) {
    this.getEstados = function getEstados() {
      return $http.get('/marcacion/getEstados');
    };
    this.updateEstadoNombre = function updateEstadoNombre(valor, id) {
      return $http.get('/marcacion/updateEstadoNombre?valor='+valor+'&id='+id);
    };
    this.crearEstado = function crearEstado(estado) {
      return $http.post('/marcacion/crearEstado', {
        estado: estado
      });
    };
    this.updateEstadoIcono = function updateEstadoIcono(valor, id) {
      return $http.get('/marcacion/updateEstadoIcono?valor='+valor+'&id='+id);
    };
    this.deleteEstado = function deleteEstado(id) {
      return $http.get('/marcacion/deleteEstado?id='+id);
    };
  }
</script>
