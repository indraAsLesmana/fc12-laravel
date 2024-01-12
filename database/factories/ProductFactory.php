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
            'name' => fake()->name(),
            'price' => fake()->numberBetween(100, 1000),
            'category' => fake()->word(),
            'description' => fake()->text(),
            'image' => json_encode(fake()->imageUrl()),
            'brand' => fake()->company(),
        ];
    }
}
