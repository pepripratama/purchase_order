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
</style>

<div class="card shadow">
  <h5 class="card-header text-white bg-info">Daftar Sales Order</h5>
  <div class="card-body">
    <table class="table table-striped" id="datatable" style="width: 100%;">
      <thead>
        <tr>
          <th>#</th>
          <th>Customer</th>
          <th>Type Harga</th>
          <th>Jenis</th>
          <th>Sales</th>
          <th>Tgl PO</th>
          <th>status</th>
          <th style="width:10%">Action</th>
        </tr>
      </thead>
      <tbody>
        <?php
        $no = 0;
        foreach ($detail as $d) :
          $no++;
        ?>
          <tr>
            <td><?= $no ?></td>
            <td><?= $d->nama_customer ?></td>
            <td><?= $d->tipe_harga ?></td>
            <td><?= jenis_so($d->jenis) ?></td>
            <td><?= $d->sales ?></td>
            <td><?= $d->tanggal_dibuat ?></td>
            <td><?= status_so($d->status) ?></td>
            <td>
              <a href="<?= base_url('Order/detail/' . $d->id) ?>" class="btn btn-info btn-sm"> <i class="fa fa-eye"></i> Detail</a>
            </td>
          </tr>
        <?php endforeach ?>
      </tbody>
    </table>
  </div>
</div>