<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Lokasi extends Model
{
    protected $table='bts_lokasi';
    protected $fillable = ['kdlokasi','kdkec','latitude','longitude'];
}
