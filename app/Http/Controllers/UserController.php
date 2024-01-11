<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //get users with pagination
        $users = User::paginate(10);
        return view('pages.user.index', compact('users'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        return view('pages.dashboard');
    }

    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        return view('pages.dashboard');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $user)
    {
        return view('pages.dashboard');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        return view('pages.dashboard');
    }
}
