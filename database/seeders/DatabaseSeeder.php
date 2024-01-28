<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        $this->call([
            UserSeeder::class,
            CategorySeeder::class,
            AddressSeeder::class,
            // Product sync by API, no need to seed
            // ProductSeeder::class,
        ]);
    }
}
