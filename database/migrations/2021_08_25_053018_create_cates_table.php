<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cates', function (Blueprint $table) {
            $table->id();
            $table->char('name',100);
            $table->char('table',100)->default('products');         // tables
            $table->text('img')->nullable();
            $table->longText('desc')->nullable();
            $table->boolean('enable')->default(true);
            $table->boolean('feature')->default(false);
            $table->char('title',255)->nullable();          // SEO
            $table->char('keyword',255)->nullable();        // SEO
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
        Schema::dropIfExists('cates');
    }
}
