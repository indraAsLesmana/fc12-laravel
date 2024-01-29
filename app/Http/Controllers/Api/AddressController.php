<?php

namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;

class AddressController extends Controller
{
    public function index(Request $request) {
        // automaticly get address by user
        return response()->json([
            'message' => 'Success',
            'data' => $request->user()->address
        ], 200);

        // return response()->json([
        //     'message' => 'Success',
        //     'data' => $request->user()->address->map(function ($address) {
        //         return [
        //             'is_default' => (bool) $address->is_default,
        //         ];
        //     })
        // ], 200);
    }

    public function store(Request $request) {
        $request->validate([
            'name' => 'required',
            'full_address' => 'required',
            'phone' => 'required',
            'prov_id' => 'required',
            'city_id' => 'required',
            'district_id' => 'required',
            'postal_code' => 'required',
            'is_default' => 'required',
            'user_id' => 'required',
        ]);

        // make user all address only have one is_default true, another address else must be false
        $address = $request->user()->address()->where('is_default', true)->first();
        if ($address) {
            $address->is_default = false;
            $address->save();
        }
        
        $address = $request->user()->address()->create($request->all());
        return response()->json([
            'message' => 'Success',
            'data' => $address
        ], 200);
    }
}
