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
        Schema::create('wali_murids', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama_ortu',50);
            $table->string('jenis_kelamin',50);
            $table->string('alamat',255);
            $table->string('no_hp',50);
            $table->unsignedBigInteger('id_guru');
            $table->timestamps();
            $table->foreign('id_guru')->references('id')->on('guruses');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('wali_murids');
    }
};
