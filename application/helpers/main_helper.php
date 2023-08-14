<?php

function get_periode()
{
	$ci = &get_instance();

	$query_periode = $ci->db->query("SELECT id, awal_periode, awal_periode + interval 14 day - interval 1 second as akhir_periode from tb_periode where akhir_periode is null")->row();


	return $query_periode;
}
function rupiah($angka){
	return number_format($angka,0,",",".");


function tampil_alert($type, $title, $text)
{
	$CI = &get_instance();
	$data = array(
		'type'  => $type,
		'title' => $title,
		'text'  => $text
	);

	$CI->session->set_flashdata($data);
}

function hitung_diskon($harga_satuan, $diskon)
{
	$diskon_decimal = str_replace('%', '', $diskon);

	if (strpos($diskon, "+") !== FALSE) {
		$pecah_diskon = explode("+", $diskon_decimal);
		$harga_diskon = $harga_satuan;

		foreach ($pecah_diskon as $pd) {
			$harga_diskon = $harga_diskon - ($harga_diskon * $pd / 100);
		}
	} else {
		$harga_diskon = $harga_satuan - ($harga_satuan * $diskon_decimal / 100);
	}

	return $harga_diskon;
}

function get_size($artikel)
{
	$akhir_huruf = substr($artikel, -1);
	if ($akhir_huruf == 'A') {
		$size = "S";
	} elseif ($akhir_huruf == 'B') {
		$size = "M";
	} elseif ($akhir_huruf == 'C') {
		$size = "L";
	} elseif ($akhir_huruf == 'D') {
		$size = "XL";
	} elseif ($akhir_huruf == 'E') {
		$size = "2XL";
	} elseif ($akhir_huruf == 'F') {
		$size = "3XL";
	} elseif ($akhir_huruf == 'G') {
		$size = "4XL";
	} else {
		$size = "-";
	}
	return $size;
}
function jenis_so($so)
{
	if ($so == 1) {
		$hasil = "SO REGULER";
	} else if ($so == 2) {
		$hasil = "SO SPECIAL PRICE";
	} else if ($so == 3) {
		$hasil = "SO BARANG X";
	} else {
		$hasil = "-";
	}
	return $hasil;
}
function status_so($so)
{
	if ($so == 0) {
		$hasil = "<span class='badge badge-danger badge-sm'>Belum di Export</span>";
	} else if ($so == 1) {
		$hasil = "<span class='badge badge-success badge-sm'>Sudah di Export</span>";
	} else {
		$hasil = "-";
	}
	return $hasil;
}
}
