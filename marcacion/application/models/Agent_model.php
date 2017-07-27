<?php
class Agent_model extends CI_Model {

  public $title;
  public $content;
  public $date;

  public function get_agent_profile($id)
  {
    // $this->db->distinct('id');
    // $this->db->select('id, first_name, last_name, est_nombre, est_color');
    // $this->db->from('users');
    // $this->db->join('emp_empleados', 'emp_empleados.emp_usu_id = users.id');
    // $this->db->join('log_logactividades', 'log_logactividades.log_usu_id = users.id');
    // $this->db->join('est_estados', 'est_estados.est_id = log_logactividades.log_est_id');
    // $this->db->group_by('users.id, est_estados.est_id');// add group_by
    // $query = $this->db->get();
    // $query = $this->db->get('emp_empleados', 10);
    $query = $this->db->query('Select *
                              From users as u
                              INNER JOIN log_logactividades as l
                              ON u.id = l.log_usu_id
                              INNER JOIN est_estados as e
                              ON e.est_id = l.log_est_id
                              WHERE u.id = '. $id);
    echo json_encode($query->result());
  }

}