@if (Session::has('create'))
    <div class="alert alert-info" role="alert">
    	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
    		<h4><i class="fa fa-check"></i> {{ Session::get('create') }} </h4>
    </div>
@elseif (Session::has('update'))
	<div class="alert alert-info" role="alert">
    	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
    		<h4><i class="fa fa-check"></i> {{ Session::get('update') }} </h4>
   </div>    
@elseif (Session::has('remove'))
	<div class="alert alert-warning" role="alert">
    	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
    		<h4><i class="fa fa-trash"></i> {{ Session::get('remove') }} </h4>
   </div>
@elseif (Session::has('empty'))
	<div class="alert alert-danger" role="alert">
    	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
    		<h4><i class="fa fa-file-o"></i> {{ Session::get('empty') }} </h4>
   </div>   			    	
@endif
