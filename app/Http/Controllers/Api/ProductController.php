<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        // get products get all or search by category_id pagination

        // validate if request have category use this logic
        if ($request->category) {
            $products = Product::when($request->category, function ($query) use ($request) {
                return $query->where('category', $request->category);
            })->paginate(10);
        } else if ($request->search) {
            $products = Product::where('name', 'like', '%' . $request->search . '%')->paginate(15);
        } else {
            $products = Product::paginate(10);
        }

        // make image from product is array string
        $products->each(function ($product) {
            $product->image = json_decode($product->image, true);
        });

        return response()->json([
            'message' => 'Success',
            'data' => $products
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
