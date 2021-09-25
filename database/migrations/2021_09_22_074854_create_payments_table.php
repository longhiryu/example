<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaymentsTable extends Migration
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
            $table->string('name')->comment('Tên lệnh chuyển tiền');
            $table->string('type')->default('in')->comment('Chuyển vào hoặc ra');
            $table->double('value')->default('0')->unsigned()->comment('Giá trị');
            $table->bigInteger('account_id')->unsigned()->comment('Tài khoản ảnh hưởng vào ra');
            $table->bigInteger('object_id')->unsigned()->comment('Đối tượng liên quan: NCC-KH-Nhân viên');
            $table->bigInteger('project_id')->nullable()->unsigned()->comment('Dự án (nếu có)');
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
        Schema::dropIfExists('payments');
    }
}
