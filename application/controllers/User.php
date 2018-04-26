<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* 
*/
class User extends CI_Controller
{	

	public function __construct(){
		parent::__construct();
		//$this->load->helper("url");
		$this->load->model("Data_user");
	}

	public function form()
	{
		$this->load->view("form_user");
	}

	public function add_input(){
		$username = $this->input->post("username");
		$password = $this->input->post("password");
		$fullname = $this->input->post("fullname");
		$level = $this->input->post("level");

		$data = array(
			'username' => $username,
			'password' => $password,
			'fullname' => $fullname,
			'level' => $level);

		$this->Data_user->submit($data);
		$this->load->view("login");
	}

	public function go_login(){
		$this->load->view("login");
	}

} 