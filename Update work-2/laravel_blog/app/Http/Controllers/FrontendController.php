<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
class FrontendController extends Controller
{
   public function index(){
        
   	    $products = Product::all();
   	    $title = "ECommerce Template-The Plaza ";

    	return view('frontend.main', compact('products','title'));
    }
       public function singleview($id){
            echo "MAMUN FASHION"; 


       }
}
