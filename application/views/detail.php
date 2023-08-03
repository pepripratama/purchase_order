<style>
  td {
    font-size: 11px;
    text-align: left;
  }

  tr {
    font-size: 14px;
  }

  .btn_tambah {
    margin-bottom: 10px;
  }

  /* CSS untuk mencetak tanpa head dan footer */
  @media print {

    header,
    footer {
      display: none;
    }
  }

  .table {
    border-collapse: collapse;
  }

  .table,
  .table td {
    border: none;
  }
</style>

<div class="card shadow">
  <header>
    <h5 class="card-header text-white bg-info">Detail Order <?= $order->id ?> | <?= $order->nama_customer ?></h5>
  </header>
  <div class="card-body">
    <h4 class="text-center">PT VISTA MANDIRI GEMILANG</h4>
    <h4 class="text-center"><b>SALES ORDER</b></h4>
    <h5 class="text-center"><b>(SO PUTUS)</b></h5>
    <hr>
    <div class="row">
      <div class="col-md-6">
        <table class="table">
          <tr>
            <td style="width: 30%;"><b>Nama Customer</b></td>
            <td>: <?= $order->nama_customer ?></td>
          </tr>
          <tr>
            <td style="width: 30%;"><b>Alamat</b></td>
            <td>: <?= $order->alamat ?></td>
          </tr>
          <tr>
            <td style="width: 30%;"><b>Type Customer</b></td>
            <td>: <?= $order->tipe_harga ?></td>
          </tr>
        </table>
      </div>
      <div class="col-md-6">
        <table class="table">
          <tr>
            <td style="width: 30%;"><b>Nama Sales</b></td>
            <td>: <?= $order->sales ?></td>
          </tr>
          <tr>
            <td style="width: 30%;"><b>Referensi</b></td>
            <td>: </td>
          </tr>
          <tr>
            <td style="width: 30%;"><b>Tanggal PO</b></td>
            <td>: <?= $order->tanggal_dibuat ?></td>
          </tr>
        </table>
      </div>
    </div>
    <table class="table table-striped">
      <thead>
        <tr>
          <th style="width:5%">No</th>
          <th style="width:13%">Kode</th>
          <th>Artikel</th>
          <th style="width:8%" class="text-center">Size</th>
          <th style="width:8%" class="text-center">QTY</th>
          <th style="width:8%" class="text-center">Satuan</th>
          <th style="width:12%" class="text-right">Harga Satuan</th>
          <th style="width:8%" class="text-center">Margin</th>
          <th style="width:12%" class="text-right">Total</th>
        </tr>
      </thead>
      <tbody>
        <?php
        $no = 0;
        $subtotal = 0;
        foreach ($detail as $d) :
          $no++;
        ?>
          <tr>
            <td><?= $no ?></td>
            <td><?= $d->kode_artikel ?></td>
            <td><?= $d->nama_artikel ?></td>
            <td class="text-center">
              <?php
              $kode_artikel = $d->kode_artikel;
              $character_after_space = explode(' ', $kode_artikel)[1] ?? "-";
              $size_mapping = array(
                'A' => 'S',
                'B' => 'M',
                'C' => 'L',
                'D' => 'XL',
                'E' => 'XXL',
              );
              echo $size_mapping[$character_after_space] ?? "-";
              ?>
            </td>
            <td class="text-center"><?= $d->qty ?></td>
            <td class="text-center"><?= $d->satuan ?></td>
            <td class="text-right">Rp <?= number_format($d->harga) ?></td>
            <td class="text-center"><?= $d->margin ?></td>
            <td class="text-right">Rp <?= number_format($d->total) ?></td>
          </tr>
        <?php
          $subtotal += $d->total;
          $grandtotal = $subtotal - $d->diskon;
        endforeach ?>
        <tr>
          <td colspan="7" class="text-right"><strong>SubTotal :</strong></td>
          <td></td>
          <td class="text-right"><strong> Rp. <?= number_format($subtotal) ?></strong></td>
        </tr>
        <tr>
          <td colspan="7" class="text-right"><strong>Diskon :</strong></td>
          <td class="text-center"><?= $d->diskon ?>%</td>
          <td class="text-right">Rp. <?= number_format($d->diskon) ?></td>
        </tr>
        <tr>
          <td colspan="7" class="text-right"><strong>GrandTotal :</strong></td>
          <td></td>
          <td class="text-right"><strong>Rp. <?= number_format($grandtotal) ?></strong></td>
        </tr>
        <tr>
          <td colspan="9" class="text-right">
            <?php
            $badge_class = $grandtotal >= $order->minimum_order ? 'success' : 'danger';
            $badge_text = $grandtotal >= $order->minimum_order ? 'SUDAH MEMENUHI MIN. PO' : 'BELUM MEMENUHI MIN. PO';
            echo "<span class='badge badge-$badge_class'>$badge_text</span>";
            ?>

          </td>
        </tr>
      </tbody>
    </table>
  </div>
  <div class="card-footer">
    <footer>
      <button onclick="window.print()" target="_blank" class="btn btn-secondary btn-sm float-right"><i class="fa fa-print"></i> Print</button>
      <button onclick="goBack()" class="btn btn-danger  btn-sm float-right mr-3"><i class="fa fa-times-circle"></i> Close</button>
    </footer>
  </div>

</div>
<script>
  // Fungsi untuk mengarahkan ke halaman sebelumnya
  function goBack() {
    window.history.back();
  }
</script>