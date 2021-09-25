<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTranfersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tranfers', function (Blueprint $table) {
            $table->id();
            $table->string('name')->comment('Tên lệnh chuyển tiền');
            $table->string('type')->default('Transfer')->comment('Luân chuyển');
            $table->double('value')->default('0')->unsigned()->comment('Giá trị luân chuyển');
            $table->integer('account_id_from')->unsigned()->comment('Nguồn tiền');
            $table->integer('account_id_to')->unsigned()->comment('Tài khoản nhận');
            $table->bigInteger('approved')->unsigned()->default(0)->comment('Người duyệt lệnh');
            $table->boolean('locked')->default(false)->comment('Khoá lệnh');
            $table->bigInteger('user_id')->unsigned()->comment('Người tạo lệnh');
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
        Schema::dropIfExists('tranfers');
    }
}
