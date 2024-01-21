<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Category;
use App\Models\Product;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Log;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $this->sync();

        $products = Product::paginate(10);
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
    public function destroy(Product $product)
    {
        //
    }

    /**
     * Sync product
     * hit this api -> http://192.168.2.31:5000/api/tab_content?key=Fruits
     */
    public function sync()
    {

        $key = ['Fruits', 'Leafy', 'vinecrops', 'Herbs', 'Microgreen'];
        $client = new Client();
        $url = "http://192.168.2.31:5000/api/tab_content?key=". $key[rand(0,4)];
        $options = [
            'auth' => ['indra', 'indra'],
        ];
        $response = $client->request('GET', $url, $options);
        $content = $response->getBody()->getContents();
        $content = json_decode($content, true);
        // Log::debug('Content: ' . json_encode($content, JSON_PRETTY_PRINT));

        foreach ($content as $item) {
            // if total product have 100 row than return
            if (Product::count() >= 115) {
                return;
            }
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
