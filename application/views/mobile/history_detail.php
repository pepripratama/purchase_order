<?php
if ($tipe_po == 1) {
  $tipe_po_text = "Reguler";
} elseif ($tipe_po == 2){
  $tipe_po_text = "Spesial Price";
} elseif ($tipe_po == 3){
  $tipe_po_text = "Barang X";
}
?>
<div class="row mb-3">
	<div class="col-4">Nama Customer</div>
	<div class="col">: <b><?= $nama_customer ?></b></div>
</div>
<div class="row mb-3">
	<div class="col-4">Tanggal PO</div>
	<div class="col">: <b><?= $tanggal_po ?></b></div>
</div>
<div class="row mb-3">
	<div class="col-4">Tipe PO</div>
	<div class="col">: <b><?= $tipe_po_text ?></b></div>
</div>
<div class="row mb-3">
	<div class="col-4">No. Faktur</div>
	<div class="col">: <b><?= $no_faktur ?></b></div>
</div>
<div class="row mb-3">
	<div class="col-4">Referensi</div>
	<div class="col">: <b><?= $referensi ?></b></div>
</div>
<div class="row mb-3">
	<div class="col-4">Catatan</div>
	<div class="col">: <b><?= $catatan ?></b></div>
</div>
<table class="table">
	<?php
	$no = 1;
	$subtotal = 0;
	foreach ($data_history_detail as $d) { ?>
	<?php
		$harga_satuan = $d->harga;
		$diskon = $d->diskon_barang;
		$qty = $d->qty;
		$harga = hitung_diskon($harga_satuan,$diskon);
		$total = $harga * $qty;
		$subtotal += $total;
	?>
	<tr>
		<td><?= $no++ ?>.</td>
		<td><?= $d->kode_artikel ?></td>
		<td><?= $d->qty ?> <?= $d->satuan ?></td>
		<td class="text-right">Rp. <?= rupiah($total) ?></td>
	</tr>
	<?php } ?>
	<tr>
		<th colspan="3" class="text-right">Subtotal :</th>
		<th class="text-right">Rp. <?= rupiah($subtotal) ?></th>
	</tr>
	<tr>
		<th colspan="3" class="text-right">Diskon Faktur :</th>
		<th class="text-right"><?= $diskon_faktur ?></th>
	</tr>
	<tr>
		<th colspan="3" class="text-right">Grandtotal :</th>
		<th class="text-right">Rp. <?= rupiah(hitung_diskon($subtotal,$diskon_faktur)) ?></th>
	</tr>
	
</table>