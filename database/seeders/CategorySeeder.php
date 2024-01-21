<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // \App\Models\Category::factory(5)->create();

        $user = \App\Models\Category::factory()->create([
            'name' => 'Leafy',
            'description' => 'Leafy green vegetables such as kale, spinach, Swiss chard, and bok choy are high in vitamins, minerals, and fiber',
            'image' => 'https://gabbarfarms.com/cdn/shop/files/Leafy_715b1942-db65-4782-ae72-a8ed1b8a2a24.png?v=1627624891',
        ]);

        $user = \App\Models\Category::factory()->create([
            'name' => 'vine crops',
            'description' => 'Vining vegetables like cucumbers, pole beans, and tomatoes can produce huge yields. Learn how to support the vines and grow bumper crops.',
            'image' => 'https://gabbarfarms.com/cdn/shop/files/Vine_Crops.png?v=1627624890',
        ]);

        $user = \App\Models\Category::factory()->create([
            'name' => 'Fruits',
            'description' => 'Fruit is higher in sugar and calories than vegetables, but both fruits and vegetables are rich in fiber, vitamins, minerals and antioxidants.',
            'image' => 'https://gabbarfarms.com/cdn/shop/files/Fruits_0b58dd52-b9fe-4767-a664-680471f515d1.png?v=1627624890',
        ]);

        $user = \App\Models\Category::factory()->create([
            'name' => 'Herbs',
            'description' => 'Culinary herbs are distinguished from vegetables in that, like spices, they are used in small amounts and provide flavor rather than substance to food.',
            'image' => 'https://gabbarfarms.com/cdn/shop/files/Herbs_c9b062aa-487a-447d-862e-166f80cfdb6b.png?v=1627624890',
        ]);

        $user = \App\Models\Category::factory()->create([
            'name' => 'Microgreen',
            'description' => 'Microgreens are young vegetable greens that are approximately 1–3 inches (2.5–7.5 cm) tall. They have an aromatic flavor and concentrated nutrient content and come in a variety of colors and textures (1).',
            'image' => 'https://gabbarfarms.com/cdn/shop/files/Microgreens_6b5068f0-fac7-4ae1-a9e9-963a542518bb.png?v=1627624890',
        ]);
    }
}
