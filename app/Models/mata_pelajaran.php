<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class mata_pelajaran extends Model
{
    use HasFactory;
    protected $table = 'mata_pelajarans';
    protected $filltable = [
        'nama_pelajaran',
        'jam_pelajaran',
        'tahun_ajaran',

    ];
}
