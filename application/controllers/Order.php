<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Order extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();

		if ($this->session->userdata('login') == false) {
			redirect(base_url('auth'));
		}
	}

	public function index()
	{
		$data['view'] = 'pratinjau';
		$data['title'] = 'pratinjau Order';
	}
	// pratinjau Sales Order
	public function detail($id)
	{
		$data['view'] = 'detail';
		$data['title'] = 'Detail Order';
		$data['order'] = $this->db->query("SELECT td.*, tc.nama_customer, tc.alamat,tc.tipe_harga, tu.nama as sales, tc.minimum_order from tb_order td
		join tb_customer tc on td.id_customer = tc.id
		left join tb_user tu on tc.id_sales = tu.id where td.id ='$id'")->row();
		$data['detail']	= $this->db->query("SELECT tod.*, tb.kode_artikel,tb.nama_artikel,tb.satuan,tc.margin, td.diskon from tb_order_detail tod
		join tb_order td on tod.id_order = td.id
		join tb_barang tb on tod.id_barang = tb.id
		join tb_customer tc on td.id_customer = tc.id where tod.id_order = '$id'
		")->result();
		$this->load->view('templates/header.php', $data);
		$this->load->view('templates/index.php', $data);
		$this->load->view('templates/footer.php');
	}
}
