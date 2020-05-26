<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_login extends CI_Model
{
    //tabel data
    public $tables          = 'sensing';
    public $field_selects    = ["id", "flamevalue", "gasvalue","suhu","tanggal"];
    //data user 
    public $table           = 'tbl_users';
    public $field_select    = ["id_user", "nama_user", "username","created_at","updated_at"];
    //fungsi cek session
    function logged_id()
    {
        return $this->session->userdata('user_id');
    }

    //fungsi check login
    function check_login($table, $field1, $field2)
    {
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where($field1);
        $this->db->where($field2);
        $this->db->limit(1);
        $query = $this->db->get();
        if ($query->num_rows() == 0) {
            echo "1";
            return FALSE;
        } else {
            echo "2";
            return $query->result();
        }
    }
    
    // ambil tbl_data 
    public function sensing()
    {
        $this->db->select($this->field_selects)->from($this->tables);
        $data['total_data'] = $this->db->count_all_results(null, false);
        $query = $this->db->get_compiled_select();
        // print('<pre>'); print_r($query); exit();
        $data['result']     = $this->db->query($query)->result();
        // print('<pre>'); print_r($data); exit();
        return $data;
    }

    
    public function pengaturan()
    {
        $this->db->select($this->field_select)->from($this->table);
        $data['total_data'] = $this->db->count_all_results(null, false);
        $query = $this->db->get_compiled_select();
        // print('<pre>'); print_r($query); exit();
        $data['result']     = $this->db->query($query)->result();
        // print('<pre>'); print_r($data); exit();
        return $data;
    }

   
}