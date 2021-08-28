<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->char('sku',10)->nullable();
            $table->string('name',100);
            $table->float('price')->default('0');
            $table->bigInteger('cate_id')->default(0);
            $table->text('img')->nullable();
            $table->longText('desc')->nullable();
            $table->boolean('enable')->default(true);
            $table->boolean('feature')->default(false);
            $table->string('title',100)->nullable();          // SEO
            $table->string('keyword',100)->nullable();        // SEO
            $table->text('sum')->nullable();                // SEO
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
