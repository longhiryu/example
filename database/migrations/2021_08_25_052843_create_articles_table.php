<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateArticlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->char('sku',10)->nullable();
            $table->string('name',100);
            $table->bigInteger('cate_id')->default(0);
            $table->text('img')->default('no_image.jpg');
            $table->longText('desc')->nullable();
            $table->tinyInteger('enable',1)->default(1);
            $table->tinyInteger('feature',1)->default(0);
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
        Schema::dropIfExists('articles');
    }
}
