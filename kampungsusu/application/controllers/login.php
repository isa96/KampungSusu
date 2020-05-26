<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class login extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        //load model admin
        $this->load->model('m_login');
    }

    public function index()
    {

            if($this->m_login->logged_id())
            {
                //jika memang session sudah terdaftar, maka redirect ke halaman dahsboard
                redirect('sensor/dashboard');

            }else{

                //jika session belum terdaftar

                //set form validation
                $this->form_validation->set_rules('username', 'Username', 'required');
                $this->form_validation->set_rules('password', 'Password', 'required');

                //set message form validation
                $this->form_validation->set_message('required', '<div class="alert alert-danger" style="margin-top: 3px">
                    <div class="header"><b><i class="fa fa-exclamation-circle"></i> {field}</b> harus terisi </div></div>');

                //cek validasi
                if ($this->form_validation->run() == TRUE) {

                    //get data dari FORM
                    $username = $this->input->post("username", TRUE);
                    $password = MD5($this->input->post('password', TRUE));

                    //checking data via model
                    $checking = $this->m_login->check_login('tbl_users', array('username' => $username), array('password' => $password));
                    print_r($checking);
                    //jika ditemukan, maka create session
                    if ($checking) {
                        foreach ($checking as $apps) {

                            $session_data = array(
                                'user_id'   => $apps->id_user,
                                'user_name' => $apps->username,
                                'user_pass' => $apps->password,
                            );
                            //set session userdata
                            $this->session->set_userdata($session_data);
                            // echo $this->session->userdata('user_id'); exit;
                            redirect('login');

                        }
                    }else{

                        $data['error'] = '<div class="alert alert-danger" style="margin-top: 3px">
                            <div class="header"><b><i class="fa fa-exclamation-circle"></i> ERROR</b> username atau password salah!</div></div>';
                        $this->load->view('login', $data);
                    }
                    // echo $this->m_login->logged_id();exit;
            }
            else{
                //echo "error disini 1";
                //echo $this->session->userdata('user_id');
                //echo $this->session->userdata('user_name');
                echo $this->m_login->logged_id();
                // exit;
                $this->load->view('login');
            }

        }

    }
}