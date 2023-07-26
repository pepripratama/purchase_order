<?php

function get_periode()
{
	$ci = &get_instance();

	$query_periode = $ci->db->query("SELECT id, awal_periode, awal_periode + interval 14 day - interval 1 second as akhir_periode from tb_periode where akhir_periode is null")->row();


	return $query_periode;
}
function rupiah($angka)
{
	return number_format($angka, 2, ",", ".");
}

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
