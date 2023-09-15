<div class="card" style="height:95vh; overflow:hidden;">
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="<?= base_url('Sales_order') ?>"><i class="fas fa-home"></i></a></li>
      <li class="breadcrumb-item"><a href="<?= base_url('Sales_order/customer') ?>">Customer</a></li>
      <li class="breadcrumb-item"><a href="<?= base_url('Sales_order/list_produk') ?>">Produk</a></li>
      <li class="breadcrumb-item active" aria-current="page">Checkout</li>
    </ol>
  </nav>

  <div class="card-body isi d-none">
    <div id="catalog" style="height: 100%; overflow: scroll">
      <?php foreach ($list as $p) { ?>

        <div class="card mb-3">
          <div class="card-body">
            <b><?= $p->kode_artikel." (Size ".$p->size.")" ?></b><br>
            Rp. <?= rupiah($p->harga) ?> / <?= $p->satuan ?><br>
            diskon <span class="itemDiskon"><?= $p->diskon ?></span><br>
            x <span class="itemQty"><?= $p->qty ?></span><br>

            <div class="text-right">
                <button class="btn btn-sm btn-link btnEdit" data-rowid="<?= $p->rowid ?>" data-kode_artikel="<?= $p->kode_artikel ?>" data-nama_artikel="<?= $p->nama_artikel ?>" data-qty="<?= $p->qty ?>" data-diskon="<?= $p->diskon ?>" type="button" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-edit"></i></button>
                <button type="button" class="btn btn-sm btn-link btnConfirmDelete" data-rowid="<?= $p->rowid ?>"><i class="fas fa-trash"></i></button>
            </div>
            <div class="text-right confirmDelete" style="display: none;">
                Apakah anda yakin ingin menghapus item ini?
                <button type="button" class="btn btn-sm btn-link btnDelete" data-rowid="<?= $p->rowid ?>"><i class="fas fa-check text-success"></i></button>
                <button type="button" class="btn btn-sm btn-link btnConfirmDelete" data-rowid="<?= $p->rowid ?>"><i class="fas fa-times text-danger"></i></button>
            </div>
          </div>
        </div>
      <?php } ?>

      <form action="<?= base_url('keranjang/proses') ?>" method="POST" enctype="multipart/form-data">
      <div class="form-group">
        <label><b>Diskon Faktur</b></label>
        <select name="diskon_faktur" id="diskon_faktur" class="form-control">
          <option value="0%">0%</option>
          <option value="5%">5%</option>
          <option value="15%">15%</option>
          <option value="20%">20%</option>
        </select>
      </div>
      <div class="form-group">
        <label><b>File PO</b></label>
        <input id="lampiran" class="form-control" name="lampiran" type="file" accept=".jpeg,.jpg,.png,.pdf,.doc,.docx">
      </div>
      <div class="form-group">
        <label><b>Catatan</b></label>
        <textarea class="form-control" name="catatan"></textarea>
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
        } elseif ($tipe_po == 2){
          $tipe_po_text = "Spesial Price";
        } elseif ($tipe_po == 3){
          $tipe_po_text = "Barang X";
        } ?>
        <p><b><?= $tipe_po_text ?></b></p>
      </div>
      <hr>
      <div class="form-group text-right">
        <label>Subtotal</label>
        <p><b><div id="subtotal"></div></b></p>
      </div>
      <div class="form-group text-right">
        <label>Grandtotal</label>
        <p><b><div id="grandtotal"></div></b></p>
      </div>
    </div>
  </div>
  <div class="card-footer isi d-none p-3">
    <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-save"></i> Simpan</button>
  </div>

  </form>
</div>

<!-- Modal -->
<form id="formEditItem">
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <b id="kode_artikel"></b>
        </div>
        <div class="form-group">
          <div id="nama_artikel"></div>
        </div>
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
        <button type="button" class="btn btn-link" id="btnSimpan">Simpan</button>
      </div>
    </div>
  </div>
</div>
</form>

<script>

    $('.btnConfirmDelete').click(function(){
      $(this).closest(".card-body").find(".confirmDelete").toggle();
      $(this).closest(".card-body").find(".btnEdit").toggle();
    });

    $('#diskon_faktur').change(function(){
      subtotal();
    });

    function subtotal(){
      var diskon_faktur = $("#diskon_faktur").val();
      $.ajax({
          url: "<?= base_url('Keranjang/subtotal') ?>",
          method: "POST",
          dataType: "json",
          data: {diskon_faktur:diskon_faktur},
          success: function(data) {
            $("#subtotal").text(data.subtotal);
            $("#grandtotal").text(data.grandtotal);
          }
      });
    }
    

    $('.btnDelete').click(function() {
      var rowid = $(this).data('rowid');
      var card = $(this).closest(".card");
      $.ajax({
          url: "<?= base_url('sales_order/delete_cart/') ?>"+rowid,
          method: "GET",
          dataType: "json",
          success: function(data) {
              if (data.sukses) {
                card.remove();
                subtotal();
              
            }
          }
      });
    });

    $('.btnEdit').click(function() {
      var kode_artikel = $(this).data('kode_artikel');
      var nama_artikel = $(this).data('nama_artikel');
      var rowid = $(this).data('rowid');
      var qty = $(this).data('qty');
      var diskon = $(this).data('diskon');
      $('#editQty').val(qty);
      $('#editRowid').val(rowid);
      $('#editDiskon').val(diskon);
      $('#kode_artikel').text(kode_artikel);
      $('#nama_artikel').text(nama_artikel);
      var itemDiskon = $(this).closest(".card").find(".itemDiskon");
      var itemQty = $(this).closest(".card").find(".itemQty");
      var button = $(this);

      $('#btnSimpan').click(function() {
        var dataForm = $("#formEditItem").serialize();
        var editDiskon = $("#editDiskon").val();
        var editQty = $("#editQty").val();
        
        $.ajax({
          url: "<?= base_url('keranjang/edit_item') ?>",
          method: "POST",
          dataType: "json",
          data: dataForm,
          success: function(data) {
              if (data.sukses) {
                itemDiskon.text(editDiskon);
                itemQty.text(editQty);
                button.data('qty',editQty);
                button.data('diskon',editDiskon);
                $('#exampleModal').modal('hide');
                subtotal();
              }
          }
        });
      });
    });

    subtotal();

</script>