<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            
            $table->string('url')->nullable();
            $table->string('name')->nullable();
            $table->string('price')->nullable();
            $table->string('product_id')->unique();
            $table->text('description')->nullable();
            $table->json('image')->nullable();
            $table->string('brand')->nullable();
            //$table->foreignId('category_id')->constrained('categories')->onDelete('cascade');

            // category is constrained to categories table
            // $table->foreign('category')->references('name')->on('categories')->onDelete('cascade');

            $table->string('category'); 
            $table->foreign('category')->references('name')->on('categories')->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
