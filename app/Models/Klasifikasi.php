<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Klasifikasi extends Model
{
    protected $table='bts_klasifikasi';
    protected $fillable = ['layanaan','voice','video','streaming','data','multimedia'];
}
