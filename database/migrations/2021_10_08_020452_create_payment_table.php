<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaymentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('type');
            $table->text('desc')->nullable(); 
            $table->text('image')->nullable(); 
            $table->longText('note')->nullable(); 
            $table->integer('partner_id')->unsigned();
            $table->integer('project_id')->unsigned();
            $table->string('method')->default('Chuyển khoản');
            $table->double('value')->unsigned();                           // CK, Cash
            $table->boolean('approved')->unsigned()->default(0);
            $table->bigInteger('user_id')->unsigned();                      // user tạo ra payment 
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
        Schema::dropIfExists('payments');
    }
}
