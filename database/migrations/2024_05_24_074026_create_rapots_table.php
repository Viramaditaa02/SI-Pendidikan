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
        Schema::create('rapots', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama_siswa',50);
            $table->string('alamat',50);
            $table->string('jenis_kelamin',50);
            $table->string('id_mapel',50);
            $table->unsignedBigInteger('id_nilai');
            $table->timestamps();
            $table->foreign('id_nilai')->references('id')->on('penilaians');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('rapots');
    }
};
