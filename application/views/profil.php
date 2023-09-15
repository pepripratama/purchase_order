<div class="card" style="height:95vh; overflow:hidden;">
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="<?= base_url('Sales_order') ?>"><i class="fas fa-home"></i></a></li>
      <li class="breadcrumb-item active" aria-current="page">Profil</li>
    </ol>
  </nav>
  <div class="card-body isi d-none" >
    <p><b>Biodata</b></p>
    <div class="container-fluid">
      <p><i class="fas fa-user"></i> <?= ucwords($user->nama) ?></p>
      <p><i class="fas fa-phone"></i> -</p>
      <p><i class="fas fa-envelope"></i> -</p>
    </div>
    <p><b>Pengaturan</b></p>
    <div class="container-fluid">
      <p><a href="#" data-toggle="modal" data-target="#passwordModal"><i class="fas fa-lock"></i> Ubah Password</a></p>
      <p><a href="#" data-toggle="modal" data-target="#logoutModal"><i class="fas fa-sign-out-alt"></i> Logout</a></p>
    </div>
  </div>
</div>
</div>

<div class="modal fade" id="passwordModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-lock"></i> Ubah Password</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
          </button>
      </div>
      <div class="modal-body">
        <form id="formPassword">
          <div class="form-group">
            <label>Password Lama</label>
            <input type="password" id="old_password" name="old_password" class="form-control">
            <small style="display:none" class="text-danger" id="alert-old_password"></small>
          </div>
          <div class="form-group">
            <label>Password Baru</label>
            <input type="password" autocomplete="false" id="new_password" name="new_password" class="form-control">
          </div>
          <div class="form-group">
            <label>Ulangi Password</label>
            <input type="password" autocomplete="false" id="new_password2" class="form-control">
            <small style="display:none" class="text-danger" id="alert-new_password2"></small>
          </div>
        </div>
        <div class="modal-footer">
            <button class="btn btn-link" type="button" id="btnSimpan">Simpan</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
  $("input").keyup(function(){
    $("#alert-new_password2").hide();
    $("#alert-old_password").hide();
  })
  $('#btnSimpan').click(function() {
    var old_password = $("#old_password").val();
    var new_password = $("#new_password").val();
    var new_password2 = $("#new_password2").val();
    var dataForm = $("#formPassword").serialize();
    if (new_password != new_password2) {
      $("#alert-new_password2").text("Password harus sama !");
      $("#alert-new_password2").show();
    } else {
      $.ajax({
        url: "<?= base_url('Profil/edit_password') ?>",
        method: "POST",
        dataType: "json",
        data: dataForm,
        success: function(data) {
          if (data.status == 0) {
            $("#alert-old_password").text(data.message);
            $("#alert-old_password").show();
          } else {
            $("#passwordModal").modal('hide');
          }
        }
      });
    }
    
  });
</script>