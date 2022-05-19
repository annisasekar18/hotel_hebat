<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Model_fkamar extends CI_Model
{
    private $_table = "f_kamar";

    public $id;
    public $id_tipekamar;
    public $nama_fasilitas;
    public $kategory;
    public $img;

    public function rules()
    {
        return [

            ['field' => 'id',
            'label' => 'ID Fasilitas kamar',
            'rules' => 'required'],

            ['field' => 'id_tipekamar',
            'label' => 'Nama Kamar',
            'rules' => 'required'],
            
            ['field' => 'nama_fasilitas',
            'label' => 'Nama Fasilitas',
            'rules' => 'required'],

            ['field' => 'kategory',
            'label' => 'Kategori',
            'rules' => 'required'],

            ['field' => 'img',
            'label' => 'Foto',
            'rules' => 'required']
            
        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function GetJoin($id)
    {

        $this->db->select('f_kamar.id,f_kamar.id_tipekamar,f_kamar.nama_fasilitas,f_kamar.kategory,f_kamar.img,tipe_room.id,tipe_room.Nama_room,tipe_room.harga,tipe_room.Stok,tipe_room.img_room');
        $this->db->from('f_kamar');
        $this->db->join('tipe_room','f_kamar.id=tipe_room.id');
        $this->db->where(['f_kamar.id' => $id]);
        $query=$this->db->get();
        return $query->result();
    }
    public function getAllId($id_kamar)
    {
        return $this->db->get($this->_table)->result();
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id" => $id])->row();
    }

    public function tambah($data,$table)
    {
        $this->db->insert($table,$data);
    }

    public function edit()
    {
        $post = $this->input->post();
        $this->id         = $post["id"];
        $this->id_tipekamar       = $post["id_tipekamar"];
        $this->nama_fasilitas        = $post["nama_fasilitas"];
        $this->kategory      = $post["kategory"];
        $this->img            = $post["img"];

        $this->db->update($this->_table, $this, array('id' => $post['id']));
    }

    public function delete($id)
    {   
     
        return $this->db->delete($this->_table, array("id" => $id));
    }
    
    private function _uploadImage1()
    {
        $config['upload_path']          = './upload/kamar/';
        $config['allowed_types']        = 'gif|jpg|png';
        // $config['file_name']            = $this->uniqid();
        $config['overwrite']            = true;
        $config['max_size']             = 1024; // 1MB
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('foto_kamar')) {
            return $this->upload->data("file_name");
        }
        
        return "default.jpg";
    }

    private function _uploadImage2()
    {
        $config['upload_path']          = './upload/kamar/';
        $config['allowed_types']        = 'gif|jpg|png';
        // $config['file_name']            = $this->uniqid();
        $config['overwrite']            = true;
        $config['max_size']             = 1024; // 1MB
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('foto_kamar2')) {
            return $this->upload->data("file_name");
        }
        
        return "default.jpg";
    }

    private function _deleteImage($id)
    {
        $kamar = $this->getById($id);
        if ($kamar->foto_kamar != "default.jpg") {
            $filename = explode(".", $kamar->foto_kamar)[0];
            return array_map('unlink', glob(FCPATH."upload/kamar/$filename.*"));
        }
    }

    private function _deleteImage2($id)
    {
        $kamar = $this->getById($id);
        if ($kamar->foto_kamar2 != "default.jpg") {
            $filename = explode(".", $kamar->foto_kamar2)[0];
            return array_map('unlink', glob(FCPATH."upload/kamar/$filename.*"));
        }
    }

    public function cari($id) 
    {
        $result = $this->db->where('product_id', $id)
                           ->limit(1)
                           ->get('products');

        if($result->num_rows() > 0)
        {
            return $result->row();
        }
        else{
            return array();
        }                   
    }

    public function kamar_id_fc($id_kamar){

        $result = $this->db->where('id_kamar', $id_kamar)->get('kamar');

         if($result->num_rows() > 0)
        {
            return $result->result();
        }else{
            return false;
        } 
    }

}