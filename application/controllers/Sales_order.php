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
		$data['view'] = 'sales_order';
		$data['title'] = 'Sales Order';
		$data['customer'] = $this->db->query("SELECT * from tb_customer order by nama_customer")->result();
		$data['produk'] = $this->db->query("SELECT * from tb_barang order by kode_artikel")->result();
		$this->load->view('templates/header.php',$data);
		$this->load->view('templates/index.php',$data);
		$this->load->view('templates/footer.php');
	}

	public function get_cart()
	{

		$cart = $this->cart->contents();
		echo json_encode($cart);
	}

	public function delete_cart()
	{
		$id = $this->input->post('id');
		$cart = $this->cart->remove($id);
		echo "1";
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
		$this->form_validation->set_rules('id_produk', 'Barang', 'required');
		$this->form_validation->set_rules('qty', 'Qty', 'required');
		$this->form_validation->set_rules('id_customer', 'Customer', 'required');

		 if ($this->form_validation->run() == FALSE)
		    {
		        $data['error'] = validation_errors();
		    }
		    else
		    {
		        $id_produk = $this->input->post('id_produk');
				$kode = $this->input->post('kode_artikel');
				$qty = $this->input->post('qty');
				$id_customer = $this->input->post('id_customer');
				$data_customer = $this->db->query("SELECT margin,tipe_harga from tb_customer where id = '$id_customer'")->row();
				$data_produk = $this->db->query("SELECT * from tb_barang where id = '$id_produk'")->row();
				$kategori = $data_customer->tipe_harga;
				$diskon = $data_customer->margin;
				$satuan = $data_produk->satuan;
				$desc = $data_produk->nama_artikel;



				if ($kategori == 'RETAIL') {
					$harga = $data_produk->retail;
				} elseif ($kategori == 'GROSIR') {
					$harga = $data_produk->grosir;
				} elseif ($kategori == 'GROSIR+10') {
					$harga = $data_produk->grosir_10;
				} elseif ($kategori == 'HET JAWA') {
					$harga = $data_produk->het_jawa;
				} elseif ($kategori == 'INDO BARAT') {
					$harga = $data_produk->indo_barat;
				} else {
					$harga = 0;
				}

				$harga_diskon = hitung_diskon($harga,$diskon);
				$total = $harga_diskon * $qty;

				$data = array(
					'id' => $id_produk,
					'qty' => $qty,
					'price' => $harga,
					'name' => $kode,
					'options' => array('desc' => $desc, 'diskon' => $diskon, 'satuan' => $satuan, 'total' => $total)
				);

				$this->cart->insert($data);
				$data['success'] = 'Item berhasil ditambahkan !';
		    }

		echo json_encode($data);
		
	}


}
