<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class kelas extends Model
{
    use HasFactory;
    protected $table = 'kelas';
    protected $fillable = [
        'absensi',
        'jam_pelajaran',
        'id_guru',

    ];
    public function Guru()
    {
        return $this->belongsTo(gurus::class, 'id_guru');
    }
}
