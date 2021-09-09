<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuotationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quotations', function (Blueprint $table) {
            $table->id();
            $table->string('name',100)->comment('Tên dự án / PO ');
            $table->integer('contact_id')->unsigned()->comment('Người liên hệ trong bảng Contacts');
            $table->integer('partner_id')->unsigned()->comment('Đối tác bảng Partners');
            $table->string('sku',100)->comment('Mã báo giá');
            $table->integer('version')->unsigned()->comment('Phiên bản báo giá');
            $table->text('note');
            $table->double('subTotal');
            $table->double('tax');
            $table->double('total');
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
        Schema::dropIfExists('quotations');
    }
}
