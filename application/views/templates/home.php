<style>
  /* Gaya untuk card-box */
  .card-box {

    border: 1px solid #ccc;
    padding: 10px;
    border-radius: 5px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    width: 100%;
    margin-right: 20px;
    margin-top: 20px;
  }

  /* Gaya untuk flex container */
  .flex-container {
    display: flex;
    align-items: center;
    /* Membuat ikon dan teks sejajar secara vertikal */
  }

  /* Gaya untuk ikon */
  .flex-container i {
    font-size: 24px;
    margin-right: 10px;
    /* Jarak antara ikon dan teks */
  }

  /* Gaya untuk teks */
  .flex-container .text-content {
    font-size: 16px;
    line-height: 1.5;
    width: 100%;
    /* Teks akan memenuhi lebar container */
    height: 100%;
    /* Teks akan memenuhi tinggi container */
    overflow: hidden;
    /* Teks yang melebihi container akan terpotong */
  }

  /* Gaya untuk footer */
  .footer {
    background-color: #e0e0e0;
    /* Warna latar belakang footer */
    padding: 2px;
    /* Padding pada footer */
    border-top: 1px solid #ccc;
    /* Garis atas footer */
    border-radius: 5px 5px 5px 5px;
  }
</style>
<div class="card shadow">
  <div class="card-body">
    <h3 class="text-info">Selamat datang, <?= $this->session->userdata('name') ?></h3>
    <hr>
    <div class="row">
      <div class="col-md-4">
        <img src="<?= base_url('assets/img/logo.png') ?>" style="width: 100%;" alt="logo" />
      </div>
      <div class="col-md-8">
        Aplikasi POM (Purchase Order Mobile) merupakan aplikasi yang di gunakan untuk mengelola data permintaan barang.
        <div class="row">
          <div class="col-xl-3 mb-30">
            <div class="card-box height-100-p widget-style1">
              <div class="d-flex flex-wrap align-items-center">
                <div class="progress-data">
                  <div id="chart"></div>
                </div>
                <div class="widget-data">
                  <div class="h4 mb-0">2020</div>
                  <div class="weight-600 font-14">Customer</div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-3 mb-30">
            <div class="card-box height-100-p widget-style1">
              <div class="d-flex flex-wrap align-items-center">
                <div class="progress-data">
                  <div id="chart2"></div>
                </div>
                <div class="widget-data ">
                  <div class="h4 mb-0">400</div>
                  <div class="weight-600 font-14">Barang</div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-3 mb-30">
            <div class="card-box bg-primary">
              <div class="flex-container">
                <i class="fas fa-cart-plus text-white"></i>
                <div class="text-content">
                  <div class="h4 mb-0">350 - SO </div>
                  <div> Belum di export</div>
                </div>
              </div>
              <div class="footer text-center">
                <a href="#">Lihat</a>
              </div>
            </div>

          </div>
          <div class="col-xl-3 mb-30">
            <div class="card-box height-100-p widget-style1">
              <div class="d-flex flex-wrap align-items-center">
                <div class="progress-data">
                  <div id="chart4"></div>
                </div>
                <div class="widget-data">
                  <div class="h4 mb-0">$6060</div>
                  <div class="weight-600 font-14">Worth</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>