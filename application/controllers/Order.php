<?php
defined('BASEPATH') or exit('No direct script access allowed');
require_once FCPATH . 'vendor/autoload.php';


use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

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
		$data['view'] = 'admin/sales_order';
		$data['title'] = 'Sales Order';
		$data['detail']	= $this->db->query("SELECT tor.*, tc.nama_customer, tc.tipe_harga, tu.nama as sales from tb_order tor
		join tb_customer tc on tor.id_customer = tc.id
		left join tb_user tu on tor.id_user = tu.id where tor.status = 0
		")->result();
		$this->load->view('templates/header.php', $data);
		$this->load->view('templates/index.php', $data);
		$this->load->view('templates/footer.php');
	}
	// pratinjau Sales Order
	public function detail($id)
	{
		$data['view'] = 'admin/detail';
		$data['title'] = 'Sales Order';
		$data['order'] = $this->db->query("SELECT td.*, tc.nama_customer, tc.alamat,tc.tipe_harga, tu.nama as sales, tc.minimum_order from tb_order td
		join tb_customer tc on td.id_customer = tc.id
		left join tb_user tu on td.id_user = tu.id where td.id ='$id'")->row();
		$data['detail']	= $this->db->query("SELECT tod.*, tb.kode_artikel,tb.nama_artikel,tb.satuan,tb.size,tc.margin, td.diskon from tb_order_detail tod
		join tb_order td on tod.id_order = td.id
		join tb_barang tb on tod.id_barang = tb.id
		join tb_customer tc on td.id_customer = tc.id where tod.id_order = '$id' order by tb.kode_artikel asc
		")->result();
		$this->load->view('templates/header.php', $data);
		$this->load->view('templates/index.php', $data);
		$this->load->view('templates/footer.php');
	}
	public function getDataPo()
	{
		// Mengambil parameter id_toko dari permintaan Ajax
		$detail = $this->input->get('detail');

		// Mengambil data artikel dari tabel tb_stok berdasarkan id_toko
		// Ganti dengan kode Anda untuk mengambil data dari database
		$artikel = $this->db->query("SELECT tpd.*, tp.kode_artikel, tp.nama_artikel,tp.satuan, too.tanggal_dibuat as tgl_po from tb_order_detail tpd
       join tb_barang tp on tpd.id_barang = tp.id
	   join tb_order too on tpd.id_order = too.id
       where tpd.id_order = '$detail' order by tp.kode_artikel asc  ");

		if ($artikel->num_rows() > 0) {
			$result = $artikel->result();
			header('Content-Type: application/json'); // Tambahkan header untuk menandakan bahwa respons adalah JSON
			echo json_encode($result);
		} else {
			header('Content-Type: application/json'); // Tambahkan header untuk menandakan bahwa respons adalah JSON
			echo json_encode(array());
		}
	}
	// update qty
	public function update_po()
	{
		$id_detail	= $this->input->post('id_detail');
		$id_order	= $this->input->post('id_order');
		$qty_update	= $this->input->post('qty_update');
		$tanggal	= $this->input->post('tanggal');
		$jml	= count($id_detail);
		$this->db->trans_start();
		for ($i = 0; $i < $jml; $i++) {
			$data = array(
				'qty'	=> $qty_update[$i],
			);
			$where = array(
				'id'	=> $id_detail[$i],
				'id_order'	=> $id_order
			);
			$this->db->update('tb_order_detail', $data, $where);
		}
		$this->db->update('tb_order', array('tanggal_dibuat' => $tanggal), array('id' => $id_order));
		$this->db->trans_complete();
		tampil_alert('success', 'BERHASIL', 'Data PO berhasil di update');
		redirect(base_url('Order/detail/' . $id_order));
	}
	// export file
	public function exportSo()
	{
		$id_user	= $this->session->userdata('name');
		$id_order	= $this->input->post('id_order');
		$tanggal	= $this->input->post('tanggal');
		$no_urut	= $this->input->post('no_urut');
		$no_faktur  = "SO-" . date('Y-m') . "-" . $no_urut;
		// Get invoice data from the model
		$query = $this->db->query("SELECT td.*, tc.no_pelanggan, tc.nama_customer, tb.kode_artikel,tb.satuan, tod.qty, tod.harga, tod.diskon_barang FROM tb_order td
        JOIN tb_order_detail tod ON td.id = tod.id_order
        JOIN tb_customer tc ON td.id_customer = tc.id
        JOIN tb_barang tb ON tod.id_barang = tb.id
        WHERE td.id = '$id_order'");
		$data = array(
			'no_faktur' => $no_faktur,
			'status'	=> 1,
		);
		$where = array(
			'id'	=> $id_order
		);
		$this->db->update('tb_order', $data, $where);

		if ($query->num_rows() > 0) {
			$invoiceData = $query->row(); // Assuming you want to fetch a single row
			$detail = $query->result(); // Assuming you want to fetch a single row
			$tanggalObj = new DateTime($invoiceData->tanggal_dibuat);
			$tanggalFormatted = $tanggalObj->format('d/m/Y');
			$tanggalkirim = new DateTime($tanggal);
			$tanggalkirimFormat = $tanggalkirim->format('d/m/Y');
			// Create a new Spreadsheet instance
			$spreadsheet = new Spreadsheet();
			$worksheet = $spreadsheet->getActiveSheet();
			$worksheet->setTitle($no_faktur);
			// Merge cells for the first row and center align the text
			$worksheet->mergeCells('A1:Z1');
			$worksheet->getStyle('A1')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
			$worksheet->setCellValue('A1', $no_faktur);

			$worksheet->getStyle('A2:Z2')->getFont()->setBold(true);
			$worksheet->setCellValue('A2', 'No. Faktur');
			$worksheet->setCellValue('B2', 'No. Pelanggan');
			$worksheet->setCellValue('C2', 'Deskripsi');
			$worksheet->setCellValue('D2', 'Tanggal');
			$worksheet->setCellValue('E2', 'Nilai Tukar');
			$worksheet->setCellValue('F2', 'Nilai Tukar Pajak');
			$worksheet->setCellValue('G2', 'Syarat');
			$worksheet->setCellValue('H2', 'Kirim Melalui');
			$worksheet->setCellValue('I2', 'FOB');
			$worksheet->setCellValue('J2', 'Diskon Faktur');
			$worksheet->setCellValue('K2', 'Diskon Faktur (%)');
			$worksheet->setCellValue('L2', 'Rancangan');
			$worksheet->setCellValue('M2', 'No. PO');
			$worksheet->setCellValue('N2', 'Kirim Ke');
			$worksheet->setCellValue('O2', 'Penjual');
			$worksheet->setCellValue('P2', 'Pengguna');
			$worksheet->setCellValue('Q2', 'Est. Tgl. Kirim');
			$worksheet->setCellValue('R2', 'Termasuk Pajak');
			$worksheet->setCellValue('S2', 'No. Barang');
			$worksheet->setCellValue('T2', 'Qty');
			$worksheet->setCellValue('U2', 'Harga Satuan');
			$worksheet->setCellValue('V2', 'Kode Pajak');
			$worksheet->setCellValue('W2', 'Diskon Barang');
			$worksheet->setCellValue('X2', 'Satuan');
			$worksheet->setCellValue('Y2', 'Department');
			$worksheet->setCellValue('Z2', 'Proyek');

			$row = 3; // Start from the second row
			foreach ($detail as $data) {
				// Membuang karakter '%' dan mengubah '+' menjadi spasi
				$diskon = str_replace(array('%', '+'), array('', ' '), $data->diskon_barang);
				// Menggabungkan kembali angka-angka menjadi "25+7"
				$diskon = str_replace(' ', '+', $diskon);
				// Set values for each row
				$worksheet->setCellValue('A' . $row, $no_faktur);
				$worksheet->setCellValue('B' . $row, $invoiceData->no_pelanggan);
				$worksheet->setCellValue('C' . $row, $invoiceData->nama_customer);
				$worksheet->setCellValue('D' . $row, $tanggalFormatted);
				$worksheet->setCellValue('E' . $row, 1);
				$worksheet->setCellValue('F' . $row, 1);
				$worksheet->setCellValue('G' . $row, "Net 45");
				$worksheet->setCellValue('H' . $row, "");
				$worksheet->setCellValue('I' . $row, "");
				$worksheet->setCellValue('J' . $row, "");
				$worksheet->setCellValue('K' . $row, 0);
				$worksheet->setCellValue('L' . $row, "Sales Order");
				$worksheet->setCellValue('M' . $row, $no_faktur);
				$worksheet->setCellValue('N' . $row, $invoiceData->nama_customer);
				$worksheet->setCellValue('O' . $row, "");
				$worksheet->setCellValue('P' . $row, $id_user);
				$worksheet->setCellValue('Q' . $row, $tanggalkirimFormat);
				$worksheet->setCellValue('R' . $row, "Ya");
				$worksheet->setCellValue('S' . $row, $data->kode_artikel);
				$worksheet->setCellValue('T' . $row, $data->qty);
				$worksheet->setCellValue('U' . $row, $data->harga);
				$worksheet->setCellValue('V' . $row, "P");
				$worksheet->setCellValue('W' . $row, $diskon);
				$worksheet->setCellValue('X' . $row, $data->satuan);
				$worksheet->setCellValue('Y' . $row, "Non Department");
				$worksheet->setCellValue('Z' . $row, "Non Project");

				$row++;
			}

			// Create Excel writer
			$writer = new Xlsx($spreadsheet);

			// Set headers for file download
			header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
			header('Content-Disposition: attachment; filename="' . $no_faktur . '.xlsx"');

			// Save Excel file to PHP output stream
			$writer->save('php://output');
		}
	}
	// history
	public function history()
	{
		$data['view'] = 'admin/history';
		$data['title'] = 'history Order';
		$data['detail']	= $this->db->query("SELECT tor.*, tc.nama_customer, tc.tipe_harga, tu.nama as sales from tb_order tor
		join tb_customer tc on tor.id_customer = tc.id
		left join tb_user tu on tc.id_sales = tu.id where tor.status = 1
		")->result();
		$this->load->view('templates/header.php', $data);
		$this->load->view('templates/index.php', $data);
		$this->load->view('templates/footer.php');
	}
	// detail history
	public function detailHistory($id)
	{
		$data['view'] = 'admin/detailHistory';
		$data['title'] = 'history Order';
		$data['order'] = $this->db->query("SELECT td.*, tc.nama_customer, tc.alamat,tc.tipe_harga, tu.nama as sales, tc.minimum_order from tb_order td
		join tb_customer tc on td.id_customer = tc.id
		left join tb_user tu on tc.id_sales = tu.id where td.id ='$id'")->row();
		$data['detail']	= $this->db->query("SELECT tod.*, tb.kode_artikel,tb.nama_artikel,tb.satuan,tc.margin, td.diskon from tb_order_detail tod
		join tb_order td on tod.id_order = td.id
		join tb_barang tb on tod.id_barang = tb.id
		join tb_customer tc on td.id_customer = tc.id where tod.id_order = '$id' order by tb.kode_artikel asc
		")->result();
		$this->load->view('templates/header.php', $data);
		$this->load->view('templates/index.php', $data);
		$this->load->view('templates/footer.php');
	}
}
