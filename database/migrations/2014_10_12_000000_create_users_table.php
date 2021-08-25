<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->tinyInteger('admin',1)->default(0);
            $table->tinyInteger('role',2)->default('2');
            $table->text('avatar')->nullable();
            $table->text('address')->nullable();
            $table->string('phone',20)->nullable();
            $table->tinyInteger('enable',1)->default(1); //enabled
            $table->string('marital',20)->default('single');
            $table->date('birth')->nullable();
            $table->string('idNumber',20)->nullable();
            $table->tinyInteger('gender',1)->default(0); // male
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
