<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class siswas extends Model
{
    use HasFactory;
    protected $table = 'siswas';
    protected $filltable = [
        'nama_siswa',
        'kata sandi',
        'jenis_kelamin',
        'email',
    ];
}
