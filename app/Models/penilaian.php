<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class penilaian extends Model
{
    use HasFactory;
    protected $table = 'penilaians';
    protected $filltable = [
        'id_guru',
        'id_siswa',
        'id_id_mapel',

    ];
    
}
