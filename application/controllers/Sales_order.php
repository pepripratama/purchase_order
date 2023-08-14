<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sales_order extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->library('cart');

		// if ($this->session->userdata('login') == false) {
		// 	redirect(base_url('auth'));
		// }
	}

	public function index()
	{
		$data['view'] = 'sales_order_mobile';
		$data['title'] = 'Sales Order';
		$data['customer'] = $this->db->query("SELECT * from tb_customer order by nama_customer")->result();
		$data['produk'] = $this->db->query("SELECT * from tb_barang order by kode_artikel")->result();
		$this->load->view('mobile/header.php',$data);
		$this->load->view('mobile/mobile.php',$data);
		$this->load->view('mobile/footer.php');
	}

	public function list_produk()
	{
		$id_customer = $this->session->userdata('id_customer');
		$tipe_customer = $this->session->userdata('tipe_customer');
		$tipe_po = $this->session->userdata('tipe_po');
		if (!isset($id_customer)) {
			redirect(base_url('sales_order/customer'));
		}
		$data['view'] = 'sales_order_mobile';
		$data['title'] = 'Produk';
		if($tipe_po == 1) {
			if ($tipe_customer == 'RETAIL') {
          $tipe = "retail";
        } elseif ($tipe_customer == 'GROSIR') {
          $tipe = "grosir";
        } elseif ($tipe_customer == 'GROSIR+10') {
          $tipe = "grosir_10";
        } elseif ($tipe_customer == 'HET JAWA') {
          $tipe = "het_jawa";
        } elseif ($tipe_customer == 'INDO BARAT') {
          $tipe = "indo_barat";
        }
		} elseif($tipe_po == 2) {
			$tipe = "special_price";
		} elseif($tipe_po == 3) {
			$tipe = "barang_x";
		}
		
		$data['produk'] = $this->db->query("SELECT id, kode_artikel, nama_artikel, satuan, $tipe as harga from tb_barang where $tipe > 0 order by kode_artikel")->result();
		$this->load->view('mobile/header.php',$data);
		$this->load->view('mobile/mobile.php',$data);
		$this->load->view('mobile/footer.php');
	}

	public function get_cart()
	{

		$cart = count($this->cart->contents());
		echo json_encode($cart);
	}

	public function delete_cart($id)
	{
		$cart = $this->cart->remove($id);
		redirect(base_url('keranjang'));
	}

	public function reset_cart()
	{
		$cart = $this->cart->destroy();
		echo "1";
	}

	public function proses()
	{
		$cart = $this->cart->contents();
		foreach ($cart as $c) {
			echo $c['id']."<br>";
		}
	}

	public function add_cart()
	{
    $id_produk = $this->input->post('id_produk');
		$kode = $this->input->post('kode_artikel');
		$tipe_po = $this->session->userdata('tipe_po');
		$id_customer = $this->session->userdata('id_customer');
		$data_customer = $this->db->query("SELECT * from tb_customer where id = '$id_customer'")->row();


		if ($tipe_po=="1") {
			$diskon =$data_customer->margin;
		} else {
			$diskon = "100%";
		}
		

		$data = array(
			'id' => $id_produk,
			'qty' => 1,
			'price' => 0,
			'name' => $kode,
			'diskon' => $diskon,
		);

		$this->cart->insert($data);
		$data['success'] = 'Item berhasil ditambahkan !';

		echo json_encode($data);


	}


	// pilih customer
	public function customer()
	{
		$data['view'] = 'form_customer';
		$data['title'] = 'Customer';
		$data['customer'] = $this->db->query("SELECT * from tb_customer order by nama_customer")->result();
		$this->load->view('mobile/header.php',$data);
		$this->load->view('mobile/mobile.php',$data);
		$this->load->view('mobile/footer.php');
	}

	public function halaman()
	{
		$data['customer'] = $this->db->query("SELECT * from tb_customer order by nama_customer")->result();
		$this->load->view('isi');
	}

	public function simpan_customer()
	{
        $id_customer = $this->input->post('id_customer');
        $tipe_customer = $this->input->post('tipe_customer');
        $nama_customer = $this->input->post('nama_customer');
        $alamat_customer = $this->input->post('alamat_customer');
        $tipe_po = $this->input->post('tipe_po');

		$data = array(
			'id_customer' => $id_customer,
			'nama_customer' => $nama_customer,
			'tipe_customer' => $tipe_customer,
			'alamat_customer' => $alamat_customer,
			'tipe_po' => $tipe_po,
		);

		$this->session->set_userdata($data);
		$this->cart->destroy();
		redirect(base_url('sales_order/list_produk'));


	}
}