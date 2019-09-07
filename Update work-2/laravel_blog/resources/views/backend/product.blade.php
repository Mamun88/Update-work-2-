@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
       
        <div class="col-md-12">
           <div class="card">
            <div class="card-header" style="background: #282923; color: #fff; text-align: center;">Product Inserted View</div>
                  @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                <div class="card-body">
                <table class="table table-bordered">
					  <thead>
					    <tr>
					      <th scope="col">Product Name</th>
					      <th scope="col">Product Summary</th>
					      <th scope="col">Product Description</th>
					      <th scope="col">Product Price</th>
					      <th scope="col">Product Quantity</th>
					      <th scope="col">Alert Quantity</th>
					      <th scope="col">Product Image</th>
					      <th scope="col">Update</th>
					      <th scope="col">Delete</th>
					    </tr>
					  </thead>
					  <tbody>
					  	@forelse($products as $value)
					    <tr>
					      <td>{{$value->product_name}}</td>
					      <td>{{Str::limit($value->product_summary, 80)}}</td>
					      <td>{{Str::limit($value->product_description, 80)}}</td>
					      <td>{{$value->product_price}}</td>
					      <td>{{$value->product_quantity}}</td>
					      <td>{{$value->alert_quantity}}</td>
					      <td><img src="{{Storage::url($value->product_image)}}" hight='180' width="180"></td>
					      <td>
					      <a class="btn btn-outline-success" href="{{url('/product/edit',$value->id)}}">Edit</a>
					      </td>
					      <td>
					      	<form action="{{url('/product/delete',$value->id)}}" method="post">
					      		@csrf
					      		<button class="btn btn-outline-danger">Delete</button>
					      	</form>
					      </td>
					    </tr>
					    @empty
					    <p>No Data Available</p>
					   @endforelse
					  </tbody>
					</table>
					{{$products->links()}}

                
                  
                    
                </div>
           
           <div class="card-header" style="background: #575c62; color: #fff; text-align: center;">Product Restore View</div>
                  @if (session('restore'))
                        <div class="alert alert-success" role="alert">
                            {{ session('restore') }}
                        </div>
                    @endif
                    @if (session('parmanentdelete'))
                        <div class="alert alert-success" role="alert">
                            {{ session('parmanentdelete') }}
                        </div>
                    @endif
                <div class="card-body">
                <table class="table table-bordered">
					  <thead>
					    <tr>
					      <th scope="col">Product Name</th>
					      <th scope="col">Product Summary</th>
					      <th scope="col">Product Description</th>
					      <th scope="col">Product Price</th>
					      <th scope="col">Product Quantity</th>
					      <th scope="col">Alert Quantity</th>
					      <th scope="col">Product Image</th>
					      <th scope="col">Update</th>
					      <th scope="col">Delete</th>
					    </tr>
					  </thead>
					  <tbody>
					  	@forelse($restored as $value)
					    <tr>
					      <td>{{$value->product_name}}</td>
					      <td>{{Str::limit($value->product_summary, 80)}}</td>
					      <td>{{Str::limit($value->product_description, 80)}}</td>
					      <td>{{$value->product_price}}</td>
					      <td>{{$value->product_quantity}}</td>
					      <td>{{$value->alert_quantity}}</td>
					      <td><img src="{{Storage::url($value->product_image)}}" hight='80' width="70"></td>
					      <td>
					      <a class="btn btn-danger" href="{{url('/product/parmanentdelete',$value->id)}}">Permanently Deleting</a>
					      </td>
					      <td>
					      	<form action="{{url('/product/restore',$value->id)}}" method="post">
					      		@csrf
					      		<button class="btn btn-outline-primary">Restore</button>
					      	</form>
					      </td>
					    </tr>
					    @empty
					    <p>No Data Available</p>
					   @endforelse
					  </tbody>
					</table>
					{{$products->links()}}

                
                  
                    
                </div>
            </div>
        </div>


       
    
    </div>
</div>
@endsection