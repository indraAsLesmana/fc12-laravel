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
    }
    
    // public function index(Request $request)
    // {
    //     $userId = $request->input('user_id', $request->user()->id); // Get the user_id from the request or use the authenticated user's id
    //     $user = User::findOrFail($userId); // Retrieve the user based on the user_id
    //     $addresses = $user->address; // Retrieve the addresses associated with the user

    //     return response()->json([
    //         'message' => 'Success',
    //         'data' => $addresses
    //     ], 200);
    // }

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
