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