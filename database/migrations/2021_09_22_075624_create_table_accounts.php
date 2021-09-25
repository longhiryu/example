<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableAccounts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('accounts', function (Blueprint $table) {
            $table->integer('id',2)->autoIncrement()->unsigned();
            $table->string('name')->comment('Tên tài khoản');
            $table->double('value')->comment('Giá trị hiện tại của tài khoản');
            $table->string('type')->default('Cash')->comment('Loại tài khoản: Cash | Bank');
            $table->text('note')->nullable()->comment('Ghi chú');
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
        Schema::dropIfExists('accounts');
    }
}
