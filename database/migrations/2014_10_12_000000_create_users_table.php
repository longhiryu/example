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
            $table->boolean('admin')->default(false);
            $table->tinyInteger('role')->default(0);
            $table->text('avatar')->nullable();
            $table->text('address')->nullable();
            $table->string('phone',20)->nullable();
            $table->tinyInteger('enable')->default(1); //enabled
            $table->string('marital',20)->default('single');
            $table->date('birth')->nullable();
            $table->string('idNumber',20)->nullable();
            $table->tinyInteger('gender')->default('0'); // male
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
