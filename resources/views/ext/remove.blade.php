<style>
<!--
.modal-dialog-center {
	width: 500px;
    height: 50px;
    position: absolute;
    top: 20%;
    left: 50%;
    margin-top: -25px;
    margin-left: -200px;
    padding: 20px;
}

.bodyx {
  height: 50px;
}
-->
</style>

<!-- start of delete modal -->
<div class="modal fade" id="konfirmHapus" role="dialog" aria-labelledby="konfirmHapusLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-center">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Konfirmasi</h4>
			</div>
			<div class="modal-body bodyx">
				<p>Anda yakin akan menghapus ini ?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Batal</button>
				<button type="button" class="btn btn-primary" id="konfirmasi"><i class="fa fa-check"></i> Setuju</button>
			</div>
		</div>
	</div>
</div>
<!-- end of delete modal -->

<!-- Dialog show event handler -->
<script type="text/javascript">
<!--
	  $('#konfirmHapus').on('show.bs.modal', function (e) {
		  $message = $(e.relatedTarget).attr('data-message');
		  $(this).find('.modal-body p').text($message);
		  $title = $(e.relatedTarget).attr('data-title');
		  $(this).find('.modal-title').html("<i class='ion ion-toggle'></i>" + ' ' + $title);
		  // Passing form referensi ke modal dialog utk proses submission setuju/ok
		  var form = $(e.relatedTarget).closest('form');
		  $(this).find('.modal-footer #konfirmasi').data('form', form);
	  });
	  <!-- Form confirm (yes/ok) handler, submits form -->
	  $('#konfirmHapus').find('.modal-footer #konfirmasi').on('click', function(){
		  $(this).data('form').submit();
	  });
//-->  
</script>
