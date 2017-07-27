<?php
class Marcacion_model extends CI_Model {

  public $title;
  public $content;
  public $date;

  public function get_all_agents()
  {
    $query = $this->db->query('select  u.id, u.first_name, u.last_name, l.log_id, l.log_ip, l.log_inicio_fecha, l.log_fin_fecha, l.log_est_id, e.est_nombre
      from (select * from users) as u
      inner join log_logactividades as l
      on u.id = l.log_usu_id
      inner join est_estados as e
      on l.log_est_id = e.est_id
      order by l.log_id desc, l.log_inicio_fecha desc');
    echo json_encode($query->result());
  }

  public function get_percentages()
  {
    $query = $this->db->query('SELECT log_id, log_usu_id, est_id, est_nombre, log_inicio_fecha FROM log_logactividades inner join est_estados on log_est_id = est_id WHERE DATE(log_inicio_fecha) = CURDATE() order by log_id desc, log_inicio_fecha desc');
    echo json_encode($query->result());
  }

  public function get_estados() {
    $query = $this->db->get('est_estados');
    echo json_encode($query->result());
  }

  public function get_estados2() {
    $query = $this->db->get('est_estados');
    return $query->result();
  }

  public function insert_open_actividad($userId, $estado)
  {
    $data = array(
      'log_usu_id'       => $userId,
      'log_est_id'       => $estado,
      'log_ip'           => $_SERVER["REMOTE_ADDR"],
      'log_inicio_fecha' => date('Y-m-d H:i:s')
    );

    $this->db->insert('log_logactividades', $data);
    $insert_id=$this->db->insert_id();

    return $insert_id;
  }

  public function insert_close_actividad($logId)
  {
    $data = array(
      'log_fin_fecha' => date('Y-m-d H:i:s')
    );

    $this->db->update('log_logactividades', $data, array('log_id' => $logId));
  }

  public function crear_estado($estado)
  {
    $this->db->insert('est_estados', $estado);
  }

  public function update_estado($field, $valor, $id)
  {
    $data = array(
      $field => $valor
    );
    $this->db->update('est_estados', $data, array('est_id' => $id));
  }

  public function delete_estado($id)
  {
    $this->db->delete('est_estados', array('est_id' => $id));
  }


}
