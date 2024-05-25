<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class admins extends Model
{
    use HasFactory;

    protected $table = 'admins';
    protected $fillable = [
        'nama_admin',
        'password',
        'jenis_kelamin',
        'email',
    ];
}