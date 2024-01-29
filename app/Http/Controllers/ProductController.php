<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Category;
use App\Models\Product;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $this->sync();

        // $products = Product::paginate(10);
        // return view('pages.product.index', compact('products'));

        //get users with pagination
        $products = DB::table('products')
            ->where('name', 'like', '%' . $request->search . '%')
            ->paginate(10);
        return view('pages.product.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $product = Product::find($id);
        $categories = Category::all();
        return view('pages.product.edit', compact('product', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        $product->delete();

        return redirect()->route('product.index')->with('success', 'Product deleted successfully');
    }

    /**
     * Sync product
     * hit this api -> http://192.168.2.31:5000/api/tab_content?key=Fruits
     * hit this api -> http://fc12-groccery-service.asianpower.store/api/tab_content?key=Fruits
     */
    public function sync()
    {
        
        if (!empty(Product::all())) {
            return;
        }

        $key = ['Fruits', 'Leafy', 'vinecrops', 'Herbs', 'Microgreen'];
        $client = new Client();
        $options = [
            'auth' => ['indra', 'indra'],
        ];
        foreach ($key as $k) {
            $url = "http://fc12-groccery-service.asianpower.store/api/tab_content?key=". $k;
            $response = $client->request('GET', $url, $options);
            $content = $response->getBody()->getContents();
            $content = json_decode($content, true);
    
            foreach ($content as $item) {
                $product = Product::where('product_id', $item['id'])->first();
                if (!$product) {
                    $product = new Product();
                    $product->product_id = $item['id'];
                }
                $product->name = $item['name'];
                $product->price = $item['price'];
                $product->description = $item['Description'];
                $product->image = json_encode($item['image']);
                $product->url = $item['url'];
                $product->brand = $item['brand'];
                $product->category = $item['Category'];
                $product->save();
            }
        }
        
    }
}
