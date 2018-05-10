<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kota extends Model
{
    protected $table='bts_kota';
    protected $fillable = ['kdkota','kota'];

    public function kecamatan()
    {
        return $this->hasMany('App\Models\Kecamatan');
    }
}
