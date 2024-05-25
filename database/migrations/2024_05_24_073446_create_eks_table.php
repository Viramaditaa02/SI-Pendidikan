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
        Schema::create('eks', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama_eks',50);
            $table->unsignedBigInteger('id_siswa');
            $table->timestamps();
            $table->foreign('id_siswa')->references('id')->on('siswas');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('eks');
    }
};
