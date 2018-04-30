<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Data_user extends CI_Model
{
	
	public function __construct()
	{
		$this->load->database();
	}

	public function gets(){
		return $this->db->get('user')->result();
	}

	public function submit($data){
		$username = $this->input->post("username");
		$password = $this->input->post("password");
		$fullname = $this->input->post("fullname");
		$level = $this->input->post("level");

		$data = array(
			'username' => $username,
			'password' => $password,
			'fullname' => $fullname,
			'level' => $level);
		$this->db->insert("user", $data);
	}

	public function del($id){
		$this->db->delete("user", ["id"=>$id]);
	}
	public function edit($id){

	}

	public function get($id){

	}
}