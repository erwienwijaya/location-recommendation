<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    protected $table='bts_kategori';
    protected $fillable = ['kdkat','kategori'];

    public function kecamatan()
    {
        return $this->hasMany('App\Models\Kecamatan');
    }
}
