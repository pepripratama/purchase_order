<div class="card" style="height:95vh; overflow:hidden;">
<<<<<<< HEAD
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="<?= base_url('Sales_order') ?>"><i class="fas fa-home"></i></a></li>
      <li class="breadcrumb-item"><a href="<?= base_url('Sales_order/customer') ?>">Customer</a></li>
      <li class="breadcrumb-item"><a href="<?= base_url('Sales_order/list_produk') ?>">Produk</a></li>
      <li class="breadcrumb-item active" aria-current="page">Checkout</li>
    </ol>
  </nav>
=======
  <div class="card-header">
    <?php $this->load->view('templates/menu1') ?>
  </div>

>>>>>>> 4ca2f416fc26fa308a2e3362bfe11484dedbe2f5
  <div class="card-body isi d-none">
    <div id="catalog" style="height: 100%; overflow: scroll">
      <?php foreach ($list as $p) { ?>

        <div class="card mb-3">
          <div class="card-body">
<<<<<<< HEAD
            <b><?= $p->kode_artikel . " (Size " . $p->size . ")" ?></b><br>
=======
            <b><?= $p->kode_artikel." (Size ".get_size($p->kode_artikel).")" ?></b><br>
>>>>>>> 4ca2f416fc26fa308a2e3362bfe11484dedbe2f5
            Rp. <?= rupiah($p->harga) ?> / <?= $p->satuan ?><br>
            diskon <?= $p->diskon ?><br>
            <b>x<?= $p->qty ?></b><br>

            <div class="text-right">
<<<<<<< HEAD
              <button class="btn btn-sm btn-link btnEdit" data-rowid="<?= $p->rowid ?>" data-kode_artikel="<?= $p->kode_artikel ?>" data-nama_artikel="<?= $p->nama_artikel ?>" data-qty="<?= $p->qty ?>" data-diskon="<?= $p->diskon ?>" type="button" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-edit"></i></button>
              <button type="button" class="btn btn-sm btn-link btnConfirmDelete" data-rowid="<?= $p->rowid ?>"><i class="fas fa-trash"></i></button>
            </div>
            <div class="text-right confirmDelete" style="display: none;">
              Apakah anda yakin ingin menghapus item ini?
              <button type="button" class="btn btn-sm btn-link btnDelete" data-rowid="<?= $p->rowid ?>"><i class="fas fa-check text-success"></i></button>
              <button type="button" class="btn btn-sm btn-link btnConfirmDelete" data-rowid="<?= $p->rowid ?>"><i class="fas fa-times text-danger"></i></button>
=======
                <button class="btn btn-sm btn-success btnEdit" data-rowid="<?= $p->rowid ?>" data-kode="<?= $p->kode_artikel ?>" data-qty="<?= $p->qty ?>" data-diskon="<?= $p->diskon ?>" type="button" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-edit"></i></button>
                <a href="<?= base_url('keranjang/delete_cart/').$p->rowid ?>"><button class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></button></a>
>>>>>>> 4ca2f416fc26fa308a2e3362bfe11484dedbe2f5
            </div>
          </div>
        </div>
      <?php } ?>
<<<<<<< HEAD

      <form id="formMain" enctype="multipart/form-data">
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
          <label><b>File PO</b><small class="text-danger"> *Wajib dilampirkan</small></label>
          <input id="lampiran" class="form-control" name="lampiran" type="file" accept=".jpeg,.jpg,.png,.pdf,.doc,.docx,capture=camera" required>
        </div>
        <div class="form-group">
          <label><b>No. PO</b></label><br>
          <input type="radio" name="isNomerPO" value="1" checked> Ada
          <input type="radio" name="isNomerPO" value="0"> Tidak Ada
          <input type="text" class="form-control" id="referensi" name="referensi">
        </div>
        <div class="form-group">
          <label><b>Catatan</b></label>
          <textarea class="form-control" id="catatan" name="catatan"></textarea>
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
          } elseif ($tipe_po == 2) {
            $tipe_po_text = "Spesial Price";
          } elseif ($tipe_po == 3) {
            $tipe_po_text = "Barang X";
          } ?>
          <p><b><?= $tipe_po_text ?></b></p>
        </div>
        <hr>
        <div class="form-group text-right">
          <label>Subtotal</label>
          <p><b>
              <div id="subtotal"></div>
            </b></p>
        </div>
        <div class="form-group text-right">
          <label>Grandtotal</label>
          <p><b>
              <div id="grandtotal"></div>
            </b></p>
        </div>
    </div>
  </div>
  <div class="card-footer isi d-none p-3">
    <button class="btn btn-success btn-block" type="button" id="btnProses"><i class="fas fa-save"></i> Simpan</button>
=======
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
>>>>>>> 4ca2f416fc26fa308a2e3362bfe11484dedbe2f5
  </div>
</div>

<!-- Modal -->
<<<<<<< HEAD
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
          <?php if ($tipe_po != '1') { ?>
            <div class="form-group">
              <label>Diskon</label>
              <select class="form-control" name="diskon" id="editDiskon">
                <option value="0%">0%</option>
                <option value="15%">15%</option>
                <option value="20%">20%</option>
                <option value="22.5%">22.5%</option>
                <option value="25%">25%</option>
                <option value="50%+15%">50%+15%</option>
                <option value="50%+22.5%">50%+22.5%</option>
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
=======
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
>>>>>>> 4ca2f416fc26fa308a2e3362bfe11484dedbe2f5
      </div>
    </div>
  </div>
</form>

<<<<<<< HEAD
<script>
  $("[name='isNomerPO']").change(function() {
    var pilih = $("input[name='isNomerPO']:checked").val();
    if (pilih == 0) {
      $("#referensi").addClass('d-none', true);
    } else {
      $("#referensi").removeClass('d-none');
    }
  })

  $('.btnConfirmDelete').click(function() {
    $(this).closest(".card-body").find(".confirmDelete").toggle();
    $(this).closest(".card-body").find(".btnEdit").toggle();
  });

  $('#diskon_faktur').change(function() {
    subtotal();
  });

  function subtotal() {
    var diskon_faktur = $("#diskon_faktur").val();
    $.ajax({
      url: "<?= base_url('Keranjang/subtotal') ?>",
      method: "POST",
      dataType: "json",
      data: {
        diskon_faktur: diskon_faktur
      },
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
      url: "<?= base_url('sales_order/delete_cart/') ?>" + rowid,
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
            button.data('qty', editQty);
            button.data('diskon', editDiskon);
            $('#exampleModal').modal('hide');
            subtotal();
          }
        }
      });
    });
  });

  $("#btnProses").click(function(event) {
    var pilih = $("input[name='isNomerPO']:checked").val();
    var referensi = $('#referensi').val();
    var catatan = $('#catatan').val();
    var diskon_faktur = $('#diskon_faktur').val();
    var lampiran = $("#lampiran")[0].files[0];
    var formData = new FormData();

    if (pilih == 1 && referensi == "") {
      Swal.fire(
        'Info',
        'Silahkan masukkan No. PO',
        'warning'
      );
      return;
    }

    if (pilih == 0) {
      lampiran = null;
    }

    if (typeof(lampiran) == "undefined") {
      Swal.fire(
        'Info',
        'Silahkan pilih file lampiran PO terlebih dahulu !',
        'warning'
      );
      return;
    }

    formData.append("diskon_faktur", diskon_faktur);
    formData.append("catatan", catatan);
    formData.append("referensi", referensi);
    formData.append("lampiran", lampiran);
    

    Swal.fire({
      title: 'Apakah anda yakin?',
      text: "Data akan dikirim ke tim marketing.",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      cancelButtonText: 'Tidak',
      confirmButtonText: 'Ya'
    }).then((result) => {
      if (result.isConfirmed) {
        $('#loading').show();
        $('#btnProses').attr('disabled', true);

        $.ajax({
          url: "<?= base_url('keranjang/proses') ?>",
          method: "POST",
          dataType: "json",
          data: formData,
          contentType: false,
          processData: false,
          success: function(data) {
            if (data.status = 1) {
              Swal.fire(
                'Berhasil!',
                'Data berhasil disimpan.',
                'success'
              ).then((result) => {
                if (result.isConfirmed) {
                  location.href = "<?= base_url('sales_order') ?>";
                }
              })
            }
          }
        });
      }
    })
  })
  subtotal();
=======
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
>>>>>>> 4ca2f416fc26fa308a2e3362bfe11484dedbe2f5
</script>