<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('name');
            $table->integer('contact_id')->unsigned()->nullable();
            $table->integer('partner_id')->unsigned()->nullable();
            $table->integer('quotation_id')->unsigned()->nullable();
            $table->text('location')->nullable();
            $table->longText('note')->nullable();
            $table->double('subTotal')->unsigned()->default(0);
            $table->double('tax')->unsigned()->default(0);
            $table->double('total')->unsigned()->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('projects');
    }
}
