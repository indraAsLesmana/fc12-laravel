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
        Schema::create('order_items', function (Blueprint $table) {
            $table->id();
            // order_id
            $table->foreignId('order_id')->constrained('orders')->onDelete('cascade');
            // product_id
            // $table->foreignId('product_id')->constrained('products', 'product_id')->onDelete('cascade');

            // Add the product_id column
            // $table->string('product_id')->unique();
            $table->string('product_id');
            $table->foreign('product_id')->references('product_id')->on('products')->onDelete('cascade');
            // quantity
            $table->integer('quantity');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('order_items');
    }
};
