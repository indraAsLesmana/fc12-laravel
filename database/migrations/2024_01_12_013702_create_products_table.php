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
            // "url": "https://gabbarfarms.com/products/assortment-of-veggies",
            // "name": "Harvest Box 300g",
            // "price": "Rs. 300.00",
            // "id": "5145408307332",
            // "Category": "",
            // "Description": "Our &quot;Gabbar Box&quot; contains an exciting assortment of a selection of the following -- Lettuces - Batavia, Green Oak, Red Oak, Lollo Rosso, ButterheadSwiss Chard - Red, Yellow, GreenKale - Red, Curly, TuscanVine crops like Cherry Tomatoes, Tomatoes, CucumbersVarious herbs like Parsley, Basil, Rocket, Oregano, Thyme etc.Microgreens basis availabilityMost of the plants are grown Hydroponically in our controlled Polyhouse with ZERO Pesticides or Insecticides. In some cases we source Chemical free produce from trusted partners with full QC. We try to give some plants with the roots intact so that you can keep them in a bowl of water and retain their freshness for almost a week. This is commonly known as a &quot;Live Lettuce&quot; since its growing till the time you decide to harvest it.You can mix and match it with seasonal fruits to make an awesome Salad bowl. * The weight of a box varies between 250-350 gm. The selection will be different each week basis what we are growing at the farm",
            // "image": [
            //     "https://gabbarfarms.com/cdn/shop/products/Harvest-Box_600x.jpg?v=1634637652"
            // ],
            // "brand": "Gabbar Farms"
            $table->string('url')->nullable();
            $table->string('name')->nullable();
            $table->string('price')->nullable();
            $table->string('category')->nullable();
            $table->string('description')->nullable();
            //list of image
            $table->json('image')->nullable();
            $table->string('brand')->nullable();
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
