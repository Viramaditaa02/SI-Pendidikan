<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class wali_murid extends Model
{
    use HasFactory;
    protected $table = 'wali_murids';
    protected $filltable = [
        'nama_ortu',
        'jenis_kelamin',
        'alamat',
        'no_hp',
        'id_guru',
    ];
}
