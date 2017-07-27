<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Marcacion extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->library(array('ion_auth','form_validation'));
		$this->load->helper(array('url','language'));
    $this->load->model('marcacion_model');
    $this->load->model('agent_model');
		$this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
		$this->lang->load('auth');
    $options = array(
      'cluster' => 'us2',
      'encrypted' => true
    );
    $this->pusher = new Pusher\Pusher(
      '562dbec2971a2ed92bdf',
      'bf99c2a28ea7b40adc97',
      '373407',
      $options
    );
	}

	// Seleccion de vistas del controlador
	public function index() {
    if (!$this->ion_auth->logged_in())
    {
      // redirect them to the login page
      redirect('auth/login', 'refresh');
    }
		$data['user'] = $this->ion_auth->user()->row();
    $data['estados'] = $this->marcacion_model->get_estados2();

    $this->load->view('templates/header');
    $this->load->view('marcacion/hoy', $data);
    $this->load->view('templates/footer');
	}

	// Seleccion de vistas del controlador
	public function insert_log_actividad() {
		$estado = $_POST['estadonuevo'];
		$user = $this->ion_auth->user()->row();
		if( $_POST['logId'] > 0){
			$this->marcacion_model->insert_close_actividad( $_POST['logId'] );
		}
    $res = $this->marcacion_model->insert_open_actividad($user->id, $estado);
    // actualizando el dashboard del admin


    $data['data'] = $res;
    $this->pusher->trigger('porcentajes', 'agentes-event', $data);
    $this->pusher->trigger('porcentajes', 'porcentajes-cambiar-event', $data);
		echo json_encode($res);
	}

	// Seleccion de vistas del controlador
	public function perfil($agentId = NULL) {
    if (!$this->ion_auth->logged_in()){
      // redirect them to the login page
      redirect('auth/login', 'refresh');
    }
		$this->load->view('templates/header');
		$this->load->view('marcacion/perfil', array('id' => $agentId));
		$this->load->view('templates/footer');
	}

	// Seleccion de vistas del controlador
	public function vistaGrafico() {
    if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
        redirect('auth', 'refresh');
    }
		$this->load->view('templates/header');
		$this->load->view('marcacion/vista_por_grafico');
		$this->load->view('templates/footer');
	}

	// Seleccion de vistas del controlador
	public function vistaRegistro() {
    if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
        redirect('auth', 'refresh');
    }
		$this->load->view('templates/header');
		$this->load->view('marcacion/vista_por_registro');
		$this->load->view('templates/footer');
	}

  // Seleccion de vistas del controlador
  public function agentesEstado() {
    if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
        redirect('auth', 'refresh');
    }
    $this->load->view('templates/header');
    $this->load->view('marcacion/agentes_estado');
    $this->load->view('templates/footer');
  }

	// Seleccion de vistas del controlador
	public function crearEstados() {
    if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
        redirect('auth', 'refresh');
    }
		$this->load->view('templates/header');
		$this->load->view('marcacion/crear_estados');
		$this->load->view('templates/footer');
	}

  // Seleccion de vistas del controlador
  public function agentesEstadisticas() {
    if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
        redirect('auth', 'refresh');
    }
    $this->load->view('templates/header');
    $this->load->view('marcacion/agentes_estadisticas');
    $this->load->view('templates/footer');
  }

  // Obteniendo los agentes
  public function getAgents() {
    $this->marcacion_model->get_all_agents();
  }
  // Obteniendo los estados
  public function getEstados() {
    $this->marcacion_model->get_estados();
  }
  // Actualizando estadi
  public function updateEstadoNombre() {
    $this->marcacion_model->update_estado('est_nombre', $_GET['valor'], $_GET['id']);
  }
  // Actualizando estadi
  public function updateEstadoIcono() {
    $this->marcacion_model->update_estado('est_icon', $_GET['valor'], $_GET['id']);
  }
  // Obteniendo los porcentajes
  public function getPercentages() {
    $this->marcacion_model->get_percentages();
  }
  // Crear estado
  public function crearEstado() {
    $params = json_decode(file_get_contents('php://input'),true);
    $this->marcacion_model->crear_estado($params['estado']);
  }
  // Borrar estado
	public function deleteEstado() {
		$this->marcacion_model->delete_estado($_GET['id']);
	}

  // Obteniendo el perfil del usuario
  public function getUserPerfil() {
    $id = $_GET['id'];
    $this->agent_model->get_agent_profile($id);
  }

}
