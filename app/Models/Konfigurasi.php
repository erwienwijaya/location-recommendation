<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Konfigurasi extends Model
{
    protected $table='bts_konfigurasi';
    protected $fillable = ['tahun','kdkec','jumlah','kepadatan','site','latitude','longitude'];
    
    public function kecamatan()
    {
        return $this->hasMany('App\Models\Kecamatan');
    }
        
}
