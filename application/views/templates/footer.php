    <!-- Bootstrap core JavaScript-->
    <script src="<?= base_url ('assets'); ?>/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url ('assets'); ?>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url ('assets'); ?>/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url ('assets'); ?>/js/sb-admin-2.min.js"></script>
    <script src="<?= base_url ('assets'); ?>/bootstrap/js/bootstrap.min.js"></script>
      <!-- jquery -->
      <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
      <!-- jquery datatable -->
      <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
      <script src="https://cdn.datatables.net/buttons/1.7.0/js/dataTables.buttons.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
      <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.html5.min.js"></script>
      <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.print.min.js"></script>
    
</body>

</html>

<script type="text/javascript">
$('#datatable').DataTable( {
    dom: 'Bfrtip',
    buttons: [
        'copy', 'excel', 'pdf','csv'
    ]
} )
</script>