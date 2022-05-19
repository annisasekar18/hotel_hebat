<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->savelog(); 
	}
	public function savelog()
	{
		if (!empty($_SERVER['HTTP_REFERER'])) {
		$data['comefrom']=$_SERVER['HTTP_REFERER'];	
		}
		$data['get']=$_GET;
		$data['post']=$_POST;
		if (empty($_SESSION['user'])) {
			$data['user']=$_SESSION['user'];
		}
		$json=json_encode($data);
		$save = array('data'=>$json);
		$this->db->insert('data_log', $save);
	}

	public function data()
	{
		$view=$_GET['v'];
		$t=$_GET['t'];

		$t = $this->db->get($t)->result();
		//var_dump($t);die;
		$this->load->view('Admin/'.$view,['data'=>$t]);
	}
	public function update($value='')
	{
		$lin=[];
		foreach ($_POST as $key => $upcase) {
		$lin[]=array($key,$upcase);
		$this->db->set($key,$upcase);
		}
		$this->db->where($_GET['link'], $_GET['val']);
		$this->db->update($_GET['t']);
		redirect($_SERVER['HTTP_REFERER']); 
	}
	public function add()
	{
		$view=$_GET['v'];
		$t=$_GET['t'];
		if (!empty($_POST)) {
			$this->db->insert($_GET['t'], $_POST);
			echo "<h1>Berhasil Di Tambahkan</h1>";
		}
		$t = $this->db->get($t)->result();
		// var_dump($t);die;
		$this->load->view('Admin/'.$view,['data'=>$t]);
	}
	public function delete()
	{
		$tableName = $_GET['t'];
		$id = $_GET['id'];

		if ($tableName == 'users') {
			$this->db->where('id_login', $id);
		} else {
			$this->db->where('id', $id);
		}
		$this->db->delete($tableName);
		redirect($_SERVER['HTTP_REFERER']);
	}

	public function Logout()
	{
	  $this->session->sess_destroy();
	  redirect('Auth/login');
	}
}
 