<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OBQ extends Model
{
    protected $table='bts_obq';
    protected $fillable=['nomor','kdkec','prediksi','kepadatan','obq'];

    public function prakiraan()
    {
        return $this->belongsTo('App\Models\Prakiraan');
    }
}
