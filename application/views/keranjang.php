<div class="card" style="height:95vh; overflow:hidden;">
  <div class="card-header">
    <?php $this->load->view('templates/menu1') ?>
  </div>

  <div class="card-body isi d-none">
    <div id="catalog" style="height: 100%; overflow: scroll">
      <?php foreach ($list as $p) { ?>

        <div class="card mb-3">
          <div class="card-body">
            <b><?= $p->kode_artikel." (Size ".get_size($p->kode_artikel).")" ?></b><br>
            Rp. <?= rupiah($p->harga) ?> / <?= $p->satuan ?><br>
            diskon <?= $p->diskon ?><br>
            <b>x<?= $p->qty ?></b><br>

            <div class="text-right">
                <button class="btn btn-sm btn-success btnEdit" data-rowid="<?= $p->rowid ?>" data-kode="<?= $p->kode_artikel ?>" data-qty="<?= $p->qty ?>" data-diskon="<?= $p->diskon ?>" type="button" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-edit"></i></button>
                <a href="<?= base_url('keranjang/delete_cart/').$p->rowid ?>"><button class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></button></a>
            </div>
          </div>
        </div>
      <?php } ?>
      <div class="form-group">
        <table class="table ">
          <tr>
            <td><b>Diskon Faktur <?= $diskon_faktur ?></b></td>
            <td class="text-right"><button class="btn btn-sm btn-success btnEdit" type="button" data-toggle="modal" data-target="#exampleModal2"><i class="fas fa-edit"></i></button></td>
          </tr>
        </table>
      </div>
      <hr>
      <div class="form-group">
        <label>Nama Customer</label>
        <p><b><?= $nama_customer ?></b></p>
      </div>
      <div class="form-group">
        <label>Jenis PO</label>
        <?php
        if ($tipe_po == 1) {
          $tipe_po_text = "Reguler";
        } elseif ($tipe_po_text == 2){
          $tipe_po == "Spesial Price";
        } elseif ($tipe_po_text == 3){
          $tipe_po_text == "Barang X";
        } ?>
        <p><b><?= $tipe_po_text ?></b></p>
      </div>
      <hr>
      <div class="form-group text-right">
        <label>Subtotal</label>
        <p><b>Rp. <?= rupiah($subtotal) ?></b></p>
      </div>
      <div class="form-group text-right">
        <label>Grandtotal</label>
        <p><b>Rp. <?= rupiah($grandtotal) ?></b></p>
      </div>
    </div>
  </div>
  <div class="card-footer isi d-none p-3">
    <a class="btn btn-primary btn-block" href="<?= base_url('Keranjang/proses') ?>"><i class="fas fa-paper-plane"></i> Kirim</a>
  </div>
</div>

<!-- Modal -->
<form action="<?= base_url('keranjang/edit_item') ?>" method="POST">
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="label"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?php if($tipe_po != '1') { ?>
        <div class="form-group">
          <label>Diskon</label>
          <select class="form-control" name="diskon" id="editDiskon">
            <option value="0%">0%</option>
            <option value="15%">15%</option>
            <option value="20%">20%</option>
            <option value="22.5%">22.5%</option>
            <option value="25%">25%</option>
            <option value="50%+15%">50%+15%</option>
            <option value="50%+22,5%">50%+22,5%</option>
            <option value="50%+20%">50%+20%</option>
          </select>
        </div>
      <?php } ?>
        <div class="form-group">
          <label>Qty</label>
          <input class="form-control" name="qty" id="editQty" type="number">
          <input class="form-control" name="rowid" id="editRowid" type="hidden">
        </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Simpan</button>
      </div>
    </div>
  </div>
</div>
</form>

<!-- Modal Diskon -->
<form action="<?= base_url('keranjang/edit_diskon_faktur') ?>" method="POST">
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="label">Diskon Faktur</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <select id="diskon_faktur" name="diskon_faktur" class="form-control">
          <option value="0%">0%</option>
          <option value="5%">5%</option>
          <option value="15%">15%</option>
          <option value="20%">20%</option>
        </select>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Simpan</button>
      </div>
    </div>
  </div>
</div>
</form>

 <script>
    function hitungCart(){
      $.ajax({
          url: "<?= base_url('sales_order/get_cart') ?>",
          method: "GET",
          dataType: "json",
          success: function(data) {
              $("#jumlahCart").text(data);
          }
      });
    }

    $('.btnEdit').click(function() {
      var kode = $(this).data('kode');
      var rowid = $(this).data('rowid');
      var qty = $(this).data('qty');
      var diskon = $(this).data('diskon');
      $('#editQty').val(qty);
      $('#editRowid').val(rowid);
      $('#editDiskon').val(diskon);
      $('#label').text(kode);

    });

    $('.btnEdit').click(function() {
      var diskonFaktur = "<?= $diskon_faktur ?>";
      $('#diskon_faktur').val(diskonFaktur);

    });
</script>