<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        \App\Models\User::factory(9)->create();

        $user = \App\Models\User::factory()->create([
            'name' => 'Admin indra',
            'email' => 'indra953@gmail.com',
            'password' => Hash::make('321321321'),
            'phone' => '08123456789',
            'roles' => 'ADMIN',
        ]);

        $user = \App\Models\User::factory()->create([
            'name' => 'Admin testing',
            'email' => 'testing@mail.com',
            'password' => Hash::make('321321321'),
            'phone' => '08123456788',
            'roles' => 'STAFF',
        ]);
    }
}


