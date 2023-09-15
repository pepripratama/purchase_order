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

<<<<<<< HEAD
	public function pecah_qty(){

		$artikels = array('artikel_a','artikel_b','artikel_c');
		$qty = 28;
		$urutan = 0;
		$artikel_a = 0;
		$artikel_b = 0;
		$artikel_c = 0;
		for ($i=0; $i < $qty; $i++) { 
			$$artikels[$urutan] += 1;
			
			if ($urutan == 2) {
				$urutan = 0;
			} else {
				$urutan++;}
		}

		echo "Qty = $qty<br>";
		echo "HBKL A = $artikel_a <br>";
		echo "HBKL B = $artikel_b <br>";
		echo "HBKL C = $artikel_c <br>";

	}

	public function kodePo(){
		echo generateKodePo();
	}

=======
>>>>>>> 4ca2f416fc26fa308a2e3362bfe11484dedbe2f5

}
