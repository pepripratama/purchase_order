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
		
<<<<<<< HEAD
		$data['produk'] = $this->db->query("SELECT id, kode_artikel, nama_artikel, satuan, $tipe as harga, size from tb_barang where $tipe > 0 and status=1 order by kode_artikel")->result();
=======
		$data['produk'] = $this->db->query("SELECT id, kode_artikel, nama_artikel, satuan, $tipe as harga from tb_barang where $tipe > 0 order by kode_artikel")->result();
>>>>>>> 4ca2f416fc26fa308a2e3362bfe11484dedbe2f5
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

 		// cek di keranjang apakah sudah ada item tersebut atau belum, jika belum maka insert ke keranjanga, jika ada maka tidak insert
		$keranjang = $this->cart->contents();
		$cek = 0;
		foreach ($keranjang as $k) {
			if ($k['id'] == $id_produk) {
				$cek = 1;
			}
		}

		if ($cek == 1) {
			$data['info'] = 'warning';
			$data['title'] = 'Info';
			$data['message'] = 'Item ini sudah ada di keranjang !';
		} else {
			$data = array(
				'id' => $id_produk,
				'qty' => 1,
				'price' => 0,
				'name' => $kode,
				'diskon' => $diskon,
			);

			$insert = $this->cart->insert($data);
			$data['info'] = 'success';
			$data['title'] = 'Berhasil';
			$data['message'] = 'Item berhasil ditambahkan !';
		}
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

<<<<<<< HEAD
	public function history(){
		$tanggal = $this->input->get('tanggal');
		if (!$tanggal) {
			$tanggal = date("Y-m-d");
		}
		$id_user = $this->session->userdata('id');
		$data_history = $this->db->query("SELECT tb_order.id, tb_order.status, tb_customer.nama_customer, tb_order.tanggal_dibuat, tb_order.jenis from tb_order join tb_customer on tb_customer.id = tb_order.id_customer where tb_order.id_user = '$id_user' and date(tanggal_dibuat) = '$tanggal' order by tb_order.tanggal_dibuat desc ")->result();
		$data['data_history'] = $data_history;
		$data['view'] = 'history';
		$data['title'] = 'History';
		$data['tanggal'] = $tanggal;
		$this->load->view('mobile/header.php',$data);
		$this->load->view('mobile/mobile.php',$data);
		$this->load->view('mobile/footer.php');
	}

	public function history_detail($id){
		$data_order = $this->db->query("SELECT tb_customer.nama_customer,tb_order.tanggal_dibuat,tb_order.jenis,tb_order.no_faktur,tb_order.referensi, tb_order.diskon, tb_order.catatan, tb_order.status from tb_order join tb_customer on tb_order.id_customer = tb_customer.id where tb_order.id = '$id' order by tb_order.tanggal_dibuat")->row();

		$data_order_detail = $this->db->query("SELECT tb_barang.kode_artikel, tb_barang.satuan, tb_order_detail.qty, tb_order_detail.harga, tb_order_detail.diskon_barang from tb_order join tb_order_detail on tb_order_detail.id_order = tb_order.id join tb_barang on tb_barang.id = tb_order_detail.id_barang where tb_order.id = '$id' order by tb_order.tanggal_dibuat")->result();

		$data['nama_customer'] = $data_order->nama_customer;
		$data['diskon_faktur'] = $data_order->diskon;
		$data['tanggal_po'] = $data_order->tanggal_dibuat;
		$data['tipe_po'] = $data_order->jenis;
		$data['no_faktur'] = $data_order->no_faktur;
		$data['referensi'] = $data_order->referensi;
		$data['catatan'] = $data_order->catatan;
		$data['status'] = $data_order->status;
		$data['data_history_detail'] = $data_order_detail;
		$this->load->view('mobile/history_detail.php',$data);
=======

>>>>>>> 4ca2f416fc26fa308a2e3362bfe11484dedbe2f5
	}
}