<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kapasitas extends Model
{
    protected $table='bts_kapenodeb';
    protected $fillable = ['bw','qpsk','16qam','64qam'];
}
