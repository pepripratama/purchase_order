<?php

function get_periode(){
	$ci =& get_instance();

    $query_periode = $ci->db->query("SELECT id, awal_periode, awal_periode + interval 14 day - interval 1 second as akhir_periode from tb_periode where akhir_periode is null")->row();
    

    return $query_periode;
}
function rupiah($angka){
	return number_format($angka,0,",",".");
}

function status($status){
	if ($status == 0) {
		return "Menunggu Approve Mandor";
	} elseif ($status == 1) {
		return "Menunggu Approve Departemen";
	} elseif ($status == 2) {
		return "Menunggu Pembayaran";
	} elseif ($status == 3) {
		return "Sudh Dibayar";
	}
}

function hitung_diskon($harga_satuan,$diskon){
	if (strpos($diskon, "+") !== FALSE) {
		$pecah_diskon = explode("+", $diskon);
		$harga_diskon = $harga_satuan;
		foreach ($pecah_diskon as $pd) {
			$harga_diskon = $harga_diskon-($harga_diskon*$pd/100);
		}
	} else {
		$harga_diskon = $harga_satuan-($harga_satuan*$diskon/100);
	}

	return $harga_diskon;
}

function get_size($artikel){
	$akhir_huruf = substr($artikel, -1);
	if ($akhir_huruf == 'A') {
		$size = "S";
	} elseif ($akhir_huruf == 'B'){
		$size = "M";
	} elseif ($akhir_huruf == 'C'){
		$size = "L";
	} elseif ($akhir_huruf == 'D'){
		$size = "XL";
	} elseif ($akhir_huruf == 'E'){
		$size = "2XL";
	} elseif ($akhir_huruf == 'F'){
		$size = "3XL";
	} elseif ($akhir_huruf == 'G'){
		$size = "4XL";
	} else {
		$size = "-";
	}

	return $size;
}


?>