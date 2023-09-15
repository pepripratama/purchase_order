<div class="isi d-none">

<ul class="nav justify-content-end">
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <?= ucfirst($this->session->userdata('name')) ?> <i class="fas fa-lg fa-user-circle"></i>
    </a>
    <div class="dropdown-menu" style="margin-right:75px" aria-labelledby="navbarDropdown">
      <a class="dropdown-item" href="<?= base_url('Profil') ?>">Profil</a>
      <!-- <div class="dropdown-divider"></div> -->
      <a class="dropdown-item" href="#" class="dropdown-item" data-toggle="modal" data-target="#logoutModal">Logout</a>
    </div>
  </li>
</ul>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-default" style="border-radius: 20px 0px 0px 20px"><i class="fas fa-search"></i></span>
  </div>
  <input type="text" class="form-control" style="border-radius: 0px 20px 20px 0px;" placeholder="Cari..">
</div>

<div class="card bg-primary text-white mb-3">
  <div class="card-body">
  <h3>Hi, <?= ucfirst($this->session->userdata('name')) ?></h3>
    <p>Selamat datang kembali di aplikasi input Purchase Order (PO)</p>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-3 text-center">
      <div onclick="location.href = '<?= base_url('sales_order/customer') ?>';">
        <img class="w-75" src="<?= base_url('assets/icon/plus.png') ?>">
        <p>Input PO</p>
      </div>
    </div>
    <div class="col-3 text-center">
      <div onclick="location.href = '<?= base_url('sales_order/history') ?>';">
        <img class="w-75" src="<?= base_url('assets/icon/history.png') ?>">
        <p>History</p>
      </div>
    </div>
  </div>
</div>


<p><b></b></p>
<div class="">
  <div class="alert alert-warning alert-dismissible fade show" role="alert">
    <strong>Info !</strong> Harap segera mengganti password anda segera, untuk menghindari penyalahgunaan akses.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <div class="alert alert-warning alert-dismissible fade show" role="alert">
    <strong>Info !</strong> Jangan beritahu password anda kepada siapapun.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
</div>

</div>
