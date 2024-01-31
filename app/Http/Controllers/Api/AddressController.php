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
            'is_default' => 'required'
        ]);

        $user = $request->user();

        // Set all existing addresses' is_default to false if the new address is default
        if ($request->is_default) {
            $user->address()->update(['is_default' => false]);
        }

        // Create a new address with the user_id
        $address = $user->address()->create($request->all());

        return response()->json([
            'message' => 'Success',
            'data' => $address
        ], 201);
    }
}
