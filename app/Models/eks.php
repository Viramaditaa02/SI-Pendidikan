<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class eks extends Model
{
    use HasFactory;
    protected $table = 'eks';
    protected $filltable = [
        'nama_eks',
        'id_siswa',
    ];
}
