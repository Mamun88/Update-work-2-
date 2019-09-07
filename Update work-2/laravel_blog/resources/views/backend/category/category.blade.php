@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
       
        <div class="col-md-8">
           <div class="card">
            <div class="card-header" style="background: #282923; color: #fff; text-align: center;">Product Category View</div>
                  @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                <div class="card-body">
                <table class="table table-bordered">
					  <thead>
					    <tr>
					      <th scope="col">SL</th>
					      <th scope="col">Category Name</th>
					     
					    </tr>
					  </thead>
					  <tbody>
					 
					  	@forelse($categories as $value)
					  	<tr>
					  		<td>{{$loop->iteration}}</td>
					  		<td>{{$value->category_name}}</td>
					  	</tr>
				         @empty
					    <p>No Data Available</p>
					   @endforelse  
					  </tbody>
					</table>
		

                
                  
                    
                </div>
           
      
            </div>
        </div>


       
    
    </div>
</div>
@endsection