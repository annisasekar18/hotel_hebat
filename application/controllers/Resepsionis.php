<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Resepsionis extends CI_Controller {

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

	public function index()
	{
		$this->load->view('welcome_message');
	}
	public function call()
    {
        //$view=$_GET['v'];
        $t=$_GET['t'];
        if (!empty($_POST)) {
            foreach ($_POST as $key => $value) {
                $this->db->like($key,$value);
            }
        }
        $t = $this->db->get($t)->result();
        // var_dump($t);die;
        $this->load->view('Resepsionis/filter',['data'=>$t]);

    }   
	 public function payed()
    {   
        //var_dump($_GET['id']);
        $this->db->set($_GET['f'], $_GET['v']);
        $this->db->where('id_pesanan', $_GET['id']);
        $this->db->update('pemesanan'); 

        redirect($_SERVER['HTTP_REFERER']);
        
    }
	public function Datatrack($value='')
	{
		if (!empty($_GET['ref'])) {
			$car=$_GET['ref'];
			$this->db->where('RefPB', $car);
			$this->db->select('*');
			$this->db->from('pemesanan');
			$this->db->join('tipe_room', 'tipe_room.id = pemesanan.id_kamar');
			$yourbooked = $this->db->get()->result(); 
			$data['book']=$yourbooked;
			$data['id']=$car;
			//var_dump($data);die;
			$this->load->view('/Resepsionis/ref',['data'=>$data]);

		}else{
			$this->load->view('/Resepsionis/Datatrack');
		}
	}
	public function Logout()
	{
	  $this->session->sess_destroy();
	  redirect('Auth/login');
	}
}
