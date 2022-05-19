<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Model_datauser extends CI_Model
{
    private $_table = "users";

    public $id_login;
    public $username;
    public $password;
    public $nama;
    public $jenis_kelamin;
    public $tgl_lahir;
    public $no_telp;
    public $level;

    public function rules()
    {
        return [

            ['field' => 'id_login',
            'label' => 'ID Login',
            'rules' => 'required'],

            ['field' => 'username',
            'label' => 'Username',
            'rules' => 'required'],
            
            ['field' => 'password',
            'label' => 'Password',
            'rules' => 'required'],

            ['field' => 'nama',
            'label' => 'Nama akun',
            'rules' => 'required'],

            ['field' => 'jenis_kelamin',
            'label' => 'Jenis Kelamin',
            'rules' => 'required'],

            ['field' => 'tgl_lahir',
            'label' => 'Tanggal Lahir',
            'rules' => 'required'],

            ['field' => 'no_telp',
            'label' => 'No Telepon',
            'rules' => 'required'],

            ['field' => 'level',
            'label' => 'Level User',
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
    
    public function getById($id_login)
    {
        return $this->db->get_where($this->_table, ["id_login" => $id_login])->row();
    }

    public function tambah($data,$table)
    {
        $this->db->insert($table,$data);
    }

    public function edit()
    {
        $post = $this->input->post();
        $this->id_login         = $post["id_login"];
        $this->username         = $post["username"];
        $this->password         = $post["password"];
        $this->nama             = $post["nama"];
        $this->jenis_kelamin    = $post["jenis_kelamin"];
        $this->tgl_lahir        = $post["tgl_lahir"];
        $this->no_telp            = $post["no_telp"];
        $this->level            = $post["level"];

        $this->db->update($this->_table, $this, array('id_login' => $post['id_login']));
    }

    // public function edit_kamar()
    // {
    //     $post = $this->input->post();
    //     $this->id_kamar         = $post["id"];
    //     $this->nama_kamar       = $post["nama_kamar"];
    //     $this->jml_kamar        = $post["jml_kamar"];
    //     $this->harga_kamar      = $post["harga_kamar"];
    //     $this->lantai           = $post["lantai"];

    //     $this->db->update($this->_table, $this, array('id_kamar' => $post['id']));
    // }

    public function delete($id_login)
    {   
       
        return $this->db->delete($this->_table, array("id_login" => $id_login));
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