<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tahun_ajaran extends Model
{
    use HasFactory;
    protected $table = 'tahun_ajarans';
    protected $filltable = [
        'tahun_ajaran',
        'id_guru',
        'id_mapel',

    ];
}
