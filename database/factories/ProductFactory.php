<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'url' => fake()->url(),
            'name' => fake()->word(),
            'price' => fake()->numberBetween(100, 1000),
            'category' => fake()->randomElement(['Leafy', 'vinecrops', 'Fruits', 'Herbs', 'Microgreen']),
            'description' => fake()->text(),
            'image' => json_encode(fake()->imageUrl()),
            'brand' => fake()->company(),
            // 'category_id' => fake()->numberBetween(1, 5),
            'product_id' => fake()->numberBetween(5044360812676, 5144360812676),
        ];
    }
}
