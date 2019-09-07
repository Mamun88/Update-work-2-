@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        
    <div class="col-md-6">
            <div class="card">
                <div class="card-header" style="background: #282923; color: #fff; text-align: center;">Product Insert</div>

                <div class="card-body">
                 

                    @if(session('status'))
                    <div class="alert alert-success">
                    	 {{ session('status') }}
                    </div>
                    @endif
                    



                    <form action="{{url('/product/insert')}}" method="post" enctype="multipart/form-data">
					  @csrf
					  <div class="form-group">
					    <label for="title">Product Title</label>
					    <input type="text" class="form-control" name="product_name" id="title" placeholder="Enter Product Title">
					  </div>
           
					  <div class="form-group">
					    <label for="title">Product Category</label>
					   <select class="form-control" name="category_id" id="">
					   	 <option disabled="#">select on</option>
					   	 @foreach($categoris as $value)
					   	 <option value="{{$value->id}}">{{$value->category_name}}</option> 
					   	 
					   	@endforeach
					   </select>
					  </div>

					  <div class="form-group">
					    <label for="description">Product Description</label>
					    <textarea name="product_description" class="form-control" id="description" cols="30" rows="5" placeholder="Enter Product Description"></textarea>			    
					  </div>

					  <div class="form-group">
					    <label for="description">Product Summary</label>
					    <textarea name="product_summary" class="form-control" id="product_summary" cols="30" rows="5" placeholder="Enter Product Summary"></textarea>			    
					  </div>

					  <div class="form-group">
					    <label for="Price">Product Price</label>
					    <input type="text" class="form-control" name="product_price" id="Price" placeholder="Enter Product Price">
					  </div>

					  <div class="form-group">
					    <label for="quantity">Product Quantity</label>
					    <input type="text" class="form-control" name="product_quantity" id="quantity" placeholder="Enter Product Quantity">
					  </div>

					  <div class="form-group">
					    <label for="quantity">Alert Quantity</label>
					    <input type="text" class="form-control" name="alert_quantity" id="quantity" placeholder="Enter Alert Quantity">
					  </div>
                      
                      <div class="form-group">
					    <label for="quantity">Product Image</label>
					    <input type="file" class="form-control" name="product_image" id="product_image">
					  </div>

					  					  
					  
					  
					  <button type="submit" class="btn btn-primary">Submit</button>
					</form>
                   
                </div>
            </div>
        </div>     


       
    
    </div>
</div>
@endsection


