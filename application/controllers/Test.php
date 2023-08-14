<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends CI_Controller {
	public function __construct(){
		parent::__construct();
	}

	public function get()
	{
		$this->load->library('cart');
		$data = $this->cart->contents();
		// $data = $this->db->query("SELECT * FROM tb_customer")->result();
		echo json_encode($data);
	}

	public function lihat(){
		$string = "0";
		
		$string2 = substr($string, 0,2);
		if ($string2 == '0.') {
			echo (int)$string;
		} else {
			echo "Tidak Aktif";
		}
	}

	public function add()
	{
		$this->load->library('cart');
		$nama = $this->input->get('nama');
		$phone = $this->input->get('phone');

		$data = array(
			'id' => '5',
			'qty' => 2,
			'price' => 100,
			'name' => 'safitri',
		);


		$set = $this->cart->insert($data);
	}


}
