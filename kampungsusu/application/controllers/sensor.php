<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

#----------------------------------------------------------------
# nama file	: Sensor.php
# lokasi file	: ./application/controllers/Sensor.php
# dibuat oleh	: Izzan Silmi Aziz
#----------------------------------------------------------------

class sensor extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		#contructor utama
		$this->load->model('m_login');
	}

	#-----------------------------------------------------------
	# nama metode 	: index()
	# @parameter	: 
	# catatan		: 
	#-----------------------------------------------------------

	public function index()
	{
		
		if($this->m_login->logged_id())
        {
        $this->load->view('sensor/dashboard');         

        }else{

            //jika session belum terdaftar, maka redirect ke halaman login
            redirect('login');

        }

    }


	#-----------------------------------------------------------
	# nama method	: dashboard
	# @parameter	: 
	# catatan		: 
	#-----------------------------------------------------------
	
	public function dashboard()
	{

		if($this->m_login->logged_id())
        {

        $this->load->view('template', TRUE);         

        }else{

            //jika session belum terdaftar, maka redirect ke halaman login
            redirect('login');

        }
		
	}

	#-----------------------------------------------------------
	# nama method	: Kematangan
	# @parameter	: 
	# catatan		: 
	#-----------------------------------------------------------
	public function tabeldata()
	{
		if($this->m_login->logged_id())
        {

      	// $this->load->view('template', TRUE);

       	$data['title']      = 'Tabel Data ';
       	$data['result']     = $this->m_login->sensing()['result'];
       	$data['total_data'] = $this->m_login->sensing()['total_data'];
        //print('<pre>'); print_r($data); exit();
        $this->parser->parse('template', $data); 

        }else{

            //jika session belum terdaftar, maka redirect ke halaman login
            redirect('login');

        }
	}

	
	#-----------------------------------------------------------
	# nama method	: Kematangan
	# @parameter	: 
	# catatan		: 
	#-----------------------------------------------------------

	public function suhu()
	{
		if($this->m_login->logged_id())
        {
        	
        $this->load->view('template', TRUE);         

        }else{

            //jika session belum terdaftar, maka redirect ke halaman login
            redirect('login');

        }
	}

	#-----------------------------------------------------------
	# nama method	: Kematangan
	# @parameter	: 
	# catatan		: 
	#-----------------------------------------------------------

	public function gas()
	{
		if($this->m_login->logged_id())
        {
        	
        $this->load->view('template', TRUE);         

        }else{

            //jika session belum terdaftar, maka redirect ke halaman login
            redirect('login');

        }
	}
		#-----------------------------------------------------------
	# nama method	: Kematangan
	# @parameter	: 
	# catatan		: 
	#-----------------------------------------------------------

	public function pengaturan()
	{
		if($this->m_login->logged_id())
        {
        	
       $data['title']      = 'Tabel Sensing';
       	$data['result']     = $this->m_login->pengaturan()['result'];
       	$data['total_data'] = $this->m_login->pengaturan()['total_data'];
        //print('<pre>'); print_r($data); exit();
        $this->parser->parse('template', $data);         

        }else{

            //jika session belum terdaftar, maka redirect ke halaman login
            redirect('login');

        }
	}

	#-----------------------------------------------------------
	# nama method	: Kematangan
	# @parameter	: 
	# catatan		: 
	#-----------------------------------------------------------

	public function tambah()
	{
		if($this->m_login->logged_id())
        {
        	
       $this->load->view('template', TRUE);         

        }else{

            //jika session belum terdaftar, maka redirect ke halaman login
            redirect('login');

        }
	}

	#-----------------------------------------------------------
	# nama method	: Kematangan
	# @parameter	: 
	# catatan		: 
	#-----------------------------------------------------------

	public function update()
	{
		if($this->m_login->logged_id())
        {
        	
      	$this->load->view('template', TRUE);

        }else{

            //jika session belum terdaftar, maka redirect ke halaman login
            redirect('login');

        }
	}

	#-----------------------------------------------------------
	# nama method	: Kematangan
	# @parameter	: 
	# catatan		: 
	#-----------------------------------------------------------




	public function logout()
    {
        $this->session->sess_destroy();
        redirect('login');
    }
    #-----------------------------------------------------------
	# nama method	: kejernihan
	# @parameter	: 
	# catatan		: 
	#-----------------------------------------------------------


}

# Akhir dari file Sensor.php
# lokasi file	: ./application/controllers/Sensor.php
