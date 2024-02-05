<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Product;
use App\Models\OrderItem;
use App\Services\Midtrans\CreateVAService;

class OrderController extends Controller
{
    // function for order
    public function order(Request $request)
    {
        // validate the request
        $request->validate([
            'address_id' => 'required',
            'payment_method' => 'required',
            'shipping_service' => 'required',
            'shipping_cost' => 'required',
            // 'total_cost' => 'required',
            'items' => 'required',
        ]);

        $subtotal = 0;
        foreach ($request->items as $item) {
            //get product price
            $product = Product::where('product_id', $item['product_id'])->first();
            $numericPrice = floatval(str_replace('Rs.', '', $product->price));
            $subtotal += $numericPrice * $item['quantity'];
        }

        // create order
        $order = Order::create([
            'user_id' => $request->user()->id,
            'address_id' => $request->address_id,
            'subtotal' => $subtotal,
            'shipping_cost' => $request->shipping_cost,
            'total_cost' => $subtotal + $request->shipping_cost,
            'status' => 'pending',
            'payment_method' => $request->payment_method,
            'shipping_service' => $request->shipping_service,
            'transaction_number' => 'TRX' . rand(100000, 999999),
        ]);

        if ($request->payment_va_name) {
            $order->update([
                'payment_va_name' => $request->payment_va_name,
            ]);
        }

        foreach ($request->items as $item) {
            OrderItem::create([
                'order_id' => $order->id,
                'product_id' => $item['product_id'],
                'quantity' => $item['quantity'],
            ]);
        }

        //va request to midtrans service 
        $midtrans = new CreateVAService($order->load('user', 'orderItems'));
        $apiResponse = $midtrans->getVA();

        $order->payment_va_number = $apiResponse->va_numbers[0]->va_number;
        $order->save();

        return response()->json([
            'message' => 'Order created successfully',
            'order' => $order,
        ]);
    }

    // get Order by id
    public function getOrder($id)
    {
        $order = Order::with('orderItems.product')->find($id);
        return response()->json([
            'order' => $order,
        ], 200);
    }
}
