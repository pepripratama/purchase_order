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
  <h5 class="card-header text-white bg-info">Daftar Barang</h5>
  <div class="card-body">
    <button type="button" class="btn btn-success btn-sm float-right btn_tambah" data-toggle="modal" data-target="#modal_tambah">
      <i class="fas fa-plus"></i> Tambah Barang
    </button>
    <table class="table table-striped" id="datatable">
      <thead>
        <tr>
          <th>No</th>
          <th style="width:11%">Kode</th>
          <th>Barang</th>
          <th style="width:8%">Satuan</th>
          <th style="width:8%">Retail</th>
          <th style="width:8%">Grosir</th>
          <th style="width:8%">Grosir_10</th>
          <th style="width:8%">HET_Jawa</th>
          <th style="width:8%">Indo_Barat</th>
          <th style="width:8%">SP</th>
          <th style="width:8%">Brg X</th>
          <th style="width:9%">Menu</th>
        </tr>
      </thead>
      <tbody>
        <?php $no = 1;
        foreach ($barang as $k) { ?>
          <tr>
            <td><?= $no++ ?></td>
            <td>
              <?= $k->kode_artikel ?>
              <br>
              <?php
              if ($k->kategori == 1) {
                echo "<span class='badge badge-danger badge-sm'>Barang X</span>";
              }
              ?>
            </td>
            <td><?= $k->nama_artikel ?></td>
            <td><?= $k->satuan ?></td>
            <td>Rp <?= number_format($k->retail) ?></td>
            <td>Rp <?= number_format($k->grosir) ?></td>
            <td>Rp <?= number_format($k->grosir_10) ?></td>
            <td>Rp <?= number_format($k->het_jawa) ?></td>
            <td>Rp <?= number_format($k->indo_barat) ?></td>
            <td>Rp <?= number_format($k->special_price) ?></td>
            <td>Rp <?= number_format($k->barang_x) ?></td>
            <td>
              <button type="button" class="btn btn-warning btn-sm btn_edit" data-toggle="modal" data-target="#exampleModalCenter" onclick="getdetail('<?php echo $k->id; ?>')">
                <i class="fas fa-edit"></i>
              </button>
              <a href="#" class="btn btn-danger btn-sm btn_delete" data-id="<?= $k->id ?>">
                <i class="fas fa-trash"></i>
              </a>
            </td>
          </tr>
        <?php } ?>
      </tbody>
    </table>
  </div>
</div>
<!-- tambah barang -->
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="modal_tambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" data-backdrop="static">
  <form action="<?= base_url('Barang/simpan') ?>" method="POST">
    <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
      <div class="modal-content">
        <div class="modal-header bg-success text-white">
          <h5 class="modal-title" id="exampleModalLongTitle">Tambah Barang Baru</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">

          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label for="">Kode Barang :</label>
                <input type="text" name="kode" id="kode_add" class="form-control form-control-sm" required>
              </div>
              <div class="form-group">
                <label for="">Nama Barang :</label>
                <textarea name="barang" class="form-control form-control-sm" required rows="5"></textarea>

              </div>
              <div class="form-group">
                <label for="">Satuan :</label>
                <select name="satuan" class="form-control form-control-sm" required>
                  <option value="">- Pilih Satuan -</option>
                  <option value="Pck">Pck</option>
                  <option value="Pcs">Pcs</option>
                  <option value="Box">Box</option>
                  <option value="Psg">Psg</option>
                </select>
              </div>

            </div>
            <div class="col-md-4">
              <div class="form-group">
                <label for="">Kategori :</label>
                <select name="kategori" id="kategori_add" class="form-control form-control-sm" required>
                  <option value="">- Pilih kategori -</option>
                  <option value="0">Barang Normal</option>
                  <option value="1">Barang X</option>
                </select>
              </div>
              <div class="form-group">
                <label for="">Retail :</label>
                <input type="text" name="retail" id="retail_add" class="form-control form-control-sm" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="">Grosir :</label>
                <input type="text" name="grosir" id="grosir_add" class="form-control form-control-sm" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="">Grosir_10 :</label>
                <input type="text" name="grosir_10" id="grosir_10_add" class="form-control form-control-sm" autocomplete="off">
              </div>

            </div>
            <div class="col-md-4">
              <div class="form-group">
                <label for="">Het Jawa :</label>
                <input type="text" name="het_jawa" id="het_jawa_add" class="form-control form-control-sm" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="">Indo Barat :</label>
                <input type="text" name="indo_barat" id="indo_barat_add" class="form-control form-control-sm" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="">Special Price :</label>
                <input type="text" name="special_price" id="sp_add" class="form-control form-control-sm" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="">Barang X :</label>
                <input type="text" name="barang_x" id="barang_x_add" class="form-control form-control-sm" autocomplete="off">
              </div>

            </div>
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-success btn-sm">Simpan</button>
        </div>
      </div>
    </div>
  </form>
</div>
<!-- end tambah -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" data-backdrop="static">
  <form action="<?= base_url('Barang/update') ?>" method="POST">
    <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
      <div class="modal-content">
        <div class="modal-header bg-warning">
          <h5 class="modal-title" id="exampleModalLongTitle">Update Data</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label for="">Kode Barang :</label>
                <input type="text" name="kode" id="kode" class="form-control form-control-sm" readonly>
                <input type="hidden" name="id_barang" id="id_barang" class="form-control form-control-sm" readonly>
              </div>
              <div class="form-group">
                <label for="">Nama Barang :</label>
                <textarea name="barang" id="barang" class="form-control form-control-sm" required rows="5"></textarea>

              </div>
              <div class="form-group">
                <label for="">Satuan :</label>
                <select name="satuan" id="satuan_input" class="form-control form-control-sm">
                  <option value="Pck">Pck</option>
                  <option value="Pcs">Pcs</option>
                  <option value="Box">Box</option>
                  <option value="Psg">Psg</option>
                </select>
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
                <label for="">Kategori :</label>
                <select name="kategori" id="kategori" class="form-control form-control-sm" required>
                  <option value="">- Pilih kategori -</option>
                  <option value="0">Barang Normal</option>
                  <option value="1">Barang X</option>
                </select>
              </div>
              <div class="form-group">
                <label for="">Retail :</label>
                <input type="text" name="retail" id="retail" class="form-control form-control-sm" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="">Grosir :</label>
                <input type="text" name="grosir" id="grosir" class="form-control form-control-sm" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="">Grosir_10 :</label>
                <input type="text" name="grosir_10" id="grosir_10" class="form-control form-control-sm" autocomplete="off">
              </div>
            </div>
            <div class="col-md-4">

              <div class="form-group">
                <label for="">Het Jawa :</label>
                <input type="text" name="het_jawa" id="het_jawa" class="form-control form-control-sm" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="">Indo Barat :</label>
                <input type="text" name="indo_barat" id="indo_barat" class="form-control form-control-sm" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="">Special Price :</label>
                <input type="text" name="special_price" id="sp" class="form-control form-control-sm" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="">Barang X :</label>
                <input type="text" name="barang_x" id="barang_x" class="form-control form-control-sm" autocomplete="off">
              </div>

            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger  btn-sm" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary  btn-sm">Simpan</button>
        </div>
      </div>
    </div>
  </form>
</div>
<script>
  function formatRupiah(angka) {
    var number_string = angka.toString().replace(/[^,\d]/g, ""),
      split = number_string.split(","),
      sisa = split[0].length % 3,
      rupiah = split[0].substr(0, sisa),
      ribuan = split[0].substr(sisa).match(/\d{3}/gi);

    if (ribuan) {
      separator = sisa ? "." : "";
      rupiah += separator + ribuan.join(".");
    }

    rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;
    return "Rp " + rupiah;
  }

  function getdetail(id) {
    // Menggunakan Ajax untuk mengambil data artikel dari server
    $.ajax({
      url: '<?= base_url('Barang/getdata') ?>',
      type: 'GET',
      data: {
        id_barang: id
      },
      success: function(response) {
        // Mengisi form dengan data artikel
        if (response) {
          $('#id_barang').val(response.id_barang);
          $('#kode').val(response.kode);
          $('#barang').val(response.nama);
          $('#satuan_input').val(response.satuan);
          $('#kategori').val(response.kategori);
          $('#retail').val(formatRupiah(response.retail));
          $('#grosir').val(formatRupiah(response.grosir));
          $('#grosir_10').val(formatRupiah(response.grosir_10));
          $('#het_jawa').val(formatRupiah(response.het_jawa));
          $('#indo_barat').val(formatRupiah(response.indo_barat));
          $('#sp').val(formatRupiah(response.special_price));
          $('#barang_x').val(formatRupiah(response.barang_x));
          if (response.kategori === '1') { // Membandingkan dengan string "1"
            $("#retail,#grosir,#grosir_10,#het_jawa,#indo_barat,#sp").prop("readonly", true);
            $("#barang_x").prop("readonly", false);
          } else {
            $("#retail,#grosir,#grosir_10,#het_jawa,#indo_barat,#sp").prop("readonly", false);
            $("#barang_x").prop("readonly", true);
          }
        }
      },
      error: function(xhr, status, error) {
        console.log(error);
      }
    });
  }
  $(document).ready(function() {
    // Tambahkan event listener ke input retail, grosir, grosir_10, het_jawa, indo_barat, dan sp
    $('#retail, #grosir, #grosir_10, #het_jawa, #indo_barat, #sp,#barang_x, #retail_add, #grosir_add, #grosir_10_add, #het_jawa_add, #indo_barat_add, #sp_add, #barang_x_add').on('keyup', function() {
      var angka = $(this).val().replace(/[Rp.,]/g, ''); // Hilangkan karakter 'Rp', '.' dan ',' dari nilai input
      var rupiah = formatRupiah(angka); // Ubah nilai menjadi format rupiah
      $(this).val(rupiah); // Set nilai input menjadi format rupiah
    });
  });
</script>
<script>
  $('.btn_delete').click(function(e) {
    const id = $(this).data('id');
    e.preventDefault();
    Swal.fire({
      title: 'Hapus Data',
      text: "Apakah anda yakin untuk Menghapusnya ?",
      icon: 'question',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      cancelButtonText: 'Batal',
      confirmButtonText: 'Yakin'
    }).then((result) => {
      if (result.isConfirmed) {
        location.href = "<?php echo base_url('Barang/hapus_data/') ?>" + id;
      }
    })
  })
</script>
<script>
  $(document).ready(function() {
    // Fungsi untuk melakukan pemeriksaan kode barang saat pengguna mengetikkan
    $("#kode_add").on("blur", function() {
      var kodeBarang = $(this).val();

      // Mengirimkan kode barang ke server untuk memeriksa keberadaannya di database
      $.ajax({
        url: "<?php echo base_url('Barang/check_kode_exist'); ?>",
        method: "POST",
        data: {
          kode: kodeBarang
        },
        dataType: "json",
        success: function(response) {
          if (response.exist) {
            // Jika kode sudah ada di database, tampilkan pesan
            Swal.fire(
              'Kode Artikel sudah ada',
              'Harap cek kembali / gunakan kode yang lain',
              'info'
            );
            $('#kode_add').css({
              'border': '1px solid red'
            });
            $('#kode_add').val('');
          } else {
            $("#kode_status").html(""); // Hapus pesan jika kode tidak ada di database
            $("button[type='submit']").prop("disabled", false); // Enable kembali tombol submit jika kode tidak ada
          }
        }
      });
    });
    $("#kategori_add").on("change", function() {
      var kategori = $(this).val();
      if (kategori === "1") { // Membandingkan dengan string "1"
        $("#retail_add,#grosir_add,#grosir_10_add,#het_jawa_add,#indo_barat_add,#sp_add").prop("readonly", true);
        $("#retail_add,#grosir_add,#grosir_10_add,#het_jawa_add,#indo_barat_add,#sp_add,#barang_x_add").val('');
        $("#barang_x_add").prop("readonly", false);
      } else {
        $("#retail_add,#grosir_add,#grosir_10_add,#het_jawa_add,#indo_barat_add,#sp_add").prop("readonly", false);
        $("#retail_add,#grosir_add,#grosir_10_add,#het_jawa_add,#indo_barat_add,#sp_add,#barang_x_add").val('');
        $("#barang_x_add").prop("readonly", true);
      }
    });
    $("#kategori").on("change", function() {
      var kategori = $(this).val();
      if (kategori === "1") { // Membandingkan dengan string "1"
        $("#retail,#grosir,#grosir_10,#het_jawa,#indo_barat,#sp").prop("readonly", true);
        $("#retail,#grosir,#grosir_10,#het_jawa,#indo_barat,#sp,#barang_x").val('');
        $("#barang_x").prop("readonly", false);
      } else {
        $("#retail,#grosir,#grosir_10,#het_jawa,#indo_barat,#sp").prop("readonly", false);
        $("#retail,#grosir,#grosir_10,#het_jawa,#indo_barat,#sp,#barang_x").val('');
        $("#barang_x").prop("readonly", true);
      }
    });

  });
</script>