<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prakiraan extends Model
{
    protected $table='bts_prakiraan';
    protected $fillable = ['tahun','kdkota','kdkec','potensial','prediksi','asumsi','prakiraan','pelanggan'];

    public function OBQ()
    {
        return $this->hasOne('App\Models\OBQ');
    }

}
