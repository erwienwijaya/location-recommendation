<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kecamatan extends Model
{
    protected $table='bts_kecamatan';
    protected $fillable = ['kdkec','kdkota','kdkat','kecamatan'];

    public function kota()
    {
        return $this->belongsTo('App\Models\Kota');
    }

    public function kategori()
    {
        return $this->belongsTo('App\Models\Kategori');
    }
    
    public function konfigurasi()
    {
        return $this->belongsTo('App\Models\Konfigurasi');
    }
}
