@if (Session::has('empty'))
	<div class="alert alert-danger" role="alert">
    	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
    		<h4><i class="ion ion-alert-circled"></i> {{ Session::get('empty') }} </h4>
    </div>
@else
	@if($errors->any())
	    <div class="alert alert-danger" role="alert">
	        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
	        <h4><i class="fa fa-warning"></i> kesalahan : </h4>
	        <ul>
	            @foreach ($errors->all() as $error)
	                <h5><i class="fa fa-close"></i> {{ $error }}</h5>
	            @endforeach
	        </ul>
	    </div>
	@endif       	
@endif