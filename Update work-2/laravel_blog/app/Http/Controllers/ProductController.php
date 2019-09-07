<?php

namespace App\Http\Controllers;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Product;
use App\Category;

class ProductController extends Controller
{

public function __construct(){
$this->middleware(['auth','verified']);
}

public function index(){
  $restored=Product::onlyTrashed()->get();
	$products = Product::orderBy('id','asc')->paginate(4);
   return view('backend.product', compact('products','restored'));
  }

public function formload(){
  $categoris=Category::orderBy('category_name','asc')->get();
   return view('backend.product_form',compact('categoris'));
  }

public function productinsert(Request $request){

  if ($request->hasFile('product_image')) {
    $path = $request->file('product_image')->store('public/product_images');

     Product::insert([
     'product_name' => $request->product_name,
     'category_id' => $request->category_id,
     'product_description' => $request->product_description,
     'product_summary' => $request->product_summary,
     'product_price' => $request->product_price,
     'product_quantity' => $request->product_quantity,
     'alert_quantity' => $request->alert_quantity,
     'product_image' =>  $path,
     'created_at' => Carbon::now()

   ]);  
   return redirect('/product')->with('status','Product Insert Successfully!');


  }
  else{

     Product::insert([
     'product_name' => $request->product_name,
     'product_description' => $request->product_description,
     'product_summary' => $request->product_summary,
     'product_price' => $request->product_price,
     'product_quantity' => $request->product_quantity,
     'alert_quantity' => $request->alert_quantity,
     'created_at' => Carbon::now()

   ]);  
   return redirect('/product')->with('status','Product Insert Successfully!');


  }

  
  }

public function productedit($id){
  
   $product = Product::find($id);
  
   return view('backend.product-edit',compact('product'));

   
}
public function productupdate(Request $request){
  
  Product::find($request->product_id)->update([
     'product_name' => $request->product_name,
     'product_description' => $request->product_description,
     'product_summary' => $request->product_summary,
     'product_price' => $request->product_price,
     'product_quantity' => $request->product_quantity,
     'alert_quantity' => $request->alert_quantity,
     'product_image' =>  $path,
     'updated_at' => Carbon::now()

   ]);  
  return redirect('/product');

  }
public function productdelete($id){

    Product::find($id)->delete();

    return back()->with('delete','Product Deleted Successfully!');


 } 


public function productrestore($id){

    Product::onlyTrashed()->find($id)->restore();

    return back()->with('restore','Product Restore Successfully!');


 } 

public function parmanentdelete($id){

    Product::onlyTrashed()->find($id)->forceDelete();

    return back()->with('parmanentdelete','Product Parmanently Delete Successfully!');


 } 

}
