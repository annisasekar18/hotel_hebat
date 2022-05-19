<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Model_fasilitashotel extends CI_Model
{
    private $_table = "fasilitas_hotel";

    public $id;
    public $nama_fasilitas;
    public $deks;
    pu;

    public function rules()
    {
        return [

            ['field' => 'id',
            'label' => 'ID Fasilitas Hotel',
            'rules' => 'required'],

            ['field' => 'nama_fasilitas',
            'label' => 'Nama Fasilitas',
            'rules' => 'required'],
            
            ['field' => 'deks',
            'label' => 'Keterangan',
            'rules' => 'required'],

            ['field',
            'label' => 'Foto',
            'rules' => 'required']

        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getAllId($id_kamar)
    {
        return $this->db->get($this->_table)->result();
    }
    
    public function getById($id_fashotel)
    {
        return $this->db->get_where($this->_table, ["id_fashotel" => $id_fashotel])->row();
    }

    public function tambah($data,$table)
    {
        $this->db->insert($table,$data);
    }

    public function edit()
    {
        $post = $this->input->post();
        $this->id                  = $post["id"];
        $this->nama_fasilitas      = $post["nama_fasilitas"];
        $this->deks                = $post["deks"];
        $this->img                 = $post["img"];

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