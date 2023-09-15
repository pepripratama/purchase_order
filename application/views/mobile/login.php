<<<<<<< HEAD
<body class="bg-success">
=======
<body class="bg-primary">
>>>>>>> 2d512ccae4d610b65f94b883adbe17633ec98fdb
<?php
if ($this->session->flashdata('type')) { ?>
    <script>
        var type = "<?= $this->session->flashdata('type'); ?>"
        var title = "<?= $this->session->flashdata('title'); ?>"
        var text = "<?= $this->session->flashdata('text'); ?>"
        Swal.fire(title, text, type);
    </script>
<?php } ?>
<div class="container mt-3">

<!-- Outer Row -->
<div class="row justify-content-center">

    <div class="col-lg-6">
        <div class="card shadow">
            
<<<<<<< HEAD
            <div class="text-center card-header">
                <img class="w-25" src="<?= base_url('assets/icon/logo-pom.png') ?>">
                <h5>Purchase Order Mobile</h5>
            </div>
=======
            <h3 class="text-center card-header">LOGIN</h3>
>>>>>>> 2d512ccae4d610b65f94b883adbe17633ec98fdb
            <div class="card-body">
                <form action="<?= base_url('auth_mobile/login') ?>" method="POST">
                    <div class="form-group">
                        <label><i class="fa fa-user"></i> USERNAME</label>
                        <input type="username" autocomplete="false" name="username" class="form-control">
                    </div>
                    <div class="form-group">
                        <label><i class="fa fa-lock"></i> PASSWORD</label>
                        <input type="password" autocomplete="false" name="password" class="form-control">
                    </div>
                    <div class="form-group">
<<<<<<< HEAD
                        <input type="submit" class="btn btn-block btn-success" value="LOGIN">
=======
                        <input type="submit" class="btn btn-block btn-primary" value="LOGIN">
>>>>>>> 2d512ccae4d610b65f94b883adbe17633ec98fdb
                    </div>
                </form>
            </div>
            <div class="card-footer text-center">
                <small>2023 - IT Internal Globalindo Group</small>
            </div>

        </div>

    </div>
</div>
</div>