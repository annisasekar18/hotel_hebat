<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class tamu extends CI_Controller {
	
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

	public function detailTipe()
	{
		$this->db->where('id', $_GET['id']);		
		$tipe_kamar = $this->db->get('tipe_room')->result();
		//var_dump($tipe_kamar);die;
		$data=[];
		foreach ($tipe_kamar as $key => $kamar) {
			$this->db->where('id_tipekamar', $kamar->id);
			$fasilitaskamar = $this->db->get('f_kamar')->result();
			$data[$key] = array(
				'Info_kamar ' =>$kamar,
				'f_kamar' =>$fasilitaskamar
			);
		}	

		$this->load->view('Tamu/DetailFKamar',['data'=>$data]); 

	}
	public function booknow()
	{
		$data['user']=$_SESSION['user'];

		$this->db->where('id', $_GET['id']);
		$tipe_kamar = $this->db->get('tipe_room')->result();
		$dataKamar=[];
		foreach ($tipe_kamar as $key => $kamar) {
			$this->db->where('id_tipekamar', $kamar->id);
			$fasilitaskamar = $this->db->get('f_kamar')->result();
			$dataKamar[$key] = array(
				'Info_kamar ' =>$kamar,
				'f_kamar' =>$fasilitaskamar
			);
		}

		$allroom = $this->db->get('tipe_room')->result();
		$data['kamar']=$dataKamar;
		$data['alltipe'] = $allroom;
		$this->load->view('Tamu/book',['data'=>$data]);
	}

	public function TipeKamar()
	{
		$tipe_kamar = $this->db->get('tipe_room')->result();
		$data=[];
		foreach ($tipe_kamar as $key => $kamar) {
			$this->db->where('id_tipekamar', $kamar->id);
			$fasilitaskamar = $this->db->get('f_kamar')->result();
			$data[$key] = array(
				'Info_kamar ' =>$kamar,
				'f_kamar' =>$fasilitaskamar
			);
		}

		$this->load->view('Tamu/fasilitaskamar',['data'=>$data]);

	}
	public function ref()
	{
		
		$this->db->where('nama_pemesan', $_SESSION['user']->Nama);

		$this->db->select('*');
		$this->db->from('pemesanan');
		$this->db->join('Tipe_room', 'Tipe_room.id = pemesanan.id_kamar');
		$yourbooked = $this->db->get()->result();
		$data['book']=$yourbooked;
		//var_dump($data);die;
		$this->load->view('Tamu/ref',['data'=>$data]);
	}
	public function prosBook()
	{
		
		$this->db->where('id', $_POST['id_kamar']);
		$tipe_kamar = $this->db->get('Tipe_room')->result();
		// var_dump($tipe_kamar);die;
		$total_harga=$_POST['jml_kamar']*$tipe_kamar[0]->harga;
		//var_dump($total_harga);die;
		$data= array(
			'nama_pemesan' => $_POST['nama_pemesan'], 
			'email' => $_POST['email'], 
			'no_hp' => $_POST['no_hp'], 
			'nama_tamu' => $_POST['nama_tamu'], 
			'id_kamar' => $_POST['id_kamar'], 
			'tgl_cekin' => $_POST['tgl_cekin'], 
			'tgl_cekout' => $_POST['tgl_cekout'], 
			'jml_kamar' => $_POST['jml_kamar'], 
			'Harga' => $total_harga, 
			'PayBay' => $_POST['PayBay'], 
			'PayEnd' => 0, 
			// 'Nomor_Kamar' => 0, 
			'RefPB' => date('mdy').$_POST['PayBay'].date('His'), 
		);
		$this->db->insert('pemesanan', $data);
		redirect('/Tamu/ref');

	}


	public function print()
	{
		$this->db->where('id_pesanan', $_GET['id']);
		$this->db->select('*');
		$this->db->from('pemesanan');
		$this->db->join('tipe_room', 'tipe_room.id =  pemesanan.id_kamar');
		$print=$this->db->get()->result();
		$data['book']=$print;
		$this->load->view('Tamu/print',['data'=>$data]);
	}
	public function batal() 
    {
        $id = $_GET['id'];
        $this->db->where('id_pesanan', $id);
        $this->db->delete('pemesanan');
        redirect('Tamu/ref');
    }
	public function Logout()
	{
	  $this->session->sess_destroy();
	  redirect('Auth/login');
	}
}      