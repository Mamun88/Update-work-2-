@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        
    <div class="col-md-6">
            <div class="card">
                <div class="card-header" style="background: #282923; color: #fff; text-align: center;">Product Category Insert</div>

                <div class="card-body">
                 

                    @if(session('status'))
                    <div class="alert alert-success">
                    	 {{ session('status') }}
                    </div>
                    @endif
                    



                    <form action="{{route('category.store')}}" method="post" enctype="multipart/form-data">
					  @csrf
					  <div class="form-group">
					    <label for="category_name">Category Name</label>
					    <input type="text" class="form-control" name="category_name" id="category_name" placeholder="Enter Product Category Name">
					  </div>

					  					  	  
					  
					  <button type="submit" class="btn btn-primary">Submit</button>
					</form>
                   
                </div>
            </div>
        </div>     


       
    
    </div>
</div>
@endsection


