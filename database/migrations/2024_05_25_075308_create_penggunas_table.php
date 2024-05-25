<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('penggunas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('username',50);
            $table->string('password',255);
            $table->unsignedBigInteger('id_admin');
            $table->unsignedBigInteger('id_guru');
            $table->unsignedBigInteger('id_siswa');
            $table->timestamps();
            $table->foreign('id_admin')->references('id')->on('admins');
            $table->foreign('id_guru')->references('id')->on('guruses');
            $table->foreign('id_siswa')->references('id')->on('siswas');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('penggunas');
    }
};
