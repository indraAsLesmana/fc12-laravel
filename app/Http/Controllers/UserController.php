<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        //get users with pagination
        $users = DB::table('users')
            ->where('name', 'like', '%' . $request->search . '%')
            ->paginate(10);
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
    public function update(Request $request, $id)
    {
        $data = $request->all();
        $user = User::find($id);
        // check if password is empty
        if (empty($data['password'])) {
            // use old password
            $data['password'] = $user->password;
        } else {
            // user new password
            $data['password'] = bcrypt($data['password']);
        }
        $user->update($data);
        return redirect()->route('user.index');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        //find user and delete
        $user = User::find($id);
        $user->delete();
        return redirect()->route('user.index');
        
    }

    //edit
    public function edit($id)
    {
        $user = User::find($id);
        return view('pages.user.edit', compact('user'));
    }
}
