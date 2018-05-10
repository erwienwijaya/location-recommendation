<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Okumura extends Model
{
    protected $table='bts_okumura';
    protected $fillable = ['fuplink','fdownlink','hms','hbsurban','hbssurban','hbsrural','auplink','adownlink','maplu','mapld'];
}
