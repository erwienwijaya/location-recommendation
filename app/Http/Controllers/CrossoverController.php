<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class CrossoverController extends Controller
{
    public function index()
    {
        $selkec=DB::table('bts_pathloss')
            ->join('bts_kecamatan','bts_pathloss.kdkec','=','bts_kecamatan.kdkec')
            ->select('bts_kecamatan.kdkec','bts_kecamatan.kecamatan')
            ->lists('kecamatan','kdkec');

        return view('form.crossover.index',['selkec' => $selkec]);
    }

    public function anyData()
    {
        $crossover = DB::table('bts_crossover')->get();
        return response()->json($crossover);
    }

    public function populasiBaru()
    {
        $populasi = DB::table('bts_populasi3')
                    ->join('bts_kecamatan',DB::raw('trim(substring(bts_populasi3.kdlokasi,1,4))'),'=','bts_kecamatan.kdkec')
                    ->join('bts_konfigurasi','bts_kecamatan.kdkec','=','bts_konfigurasi.kdkec')
                    ->select(DB::raw('bts_populasi3.id as id'),DB::raw('bts_populasi3.populasi as populasi'),DB::raw('bts_populasi3.iterasi as iterasi'),DB::raw('bts_populasi3.kdlokasi as kdlokasi'),DB::raw('bts_populasi3.latitude as latitude'),DB::raw('bts_populasi3.longitude  as longitude'),DB::raw('bts_konfigurasi.latitude as nearlat'),DB::raw('bts_konfigurasi.longitude as nearlong'),DB::raw('bts_populasi3.evaluasi as fx'),DB::raw('bts_populasi3.co as co'))
                    ->get();

        return response()->json($populasi);
    }

    public function filterCo($kec)
    {
        if ($kec == '0') {
            $crossover = DB::table('bts_crossover')
                         ->orderBy('bts_crossover.iterasi','asc')
                         ->get();
        } else
        {
            $crossover = DB::table('bts_crossover')
                        ->join('bts_lokasi', 'bts_crossover.kdlokasi', '=', 'bts_lokasi.kdlokasi')
                        ->join('bts_kota', 'bts_lokasi.kdkota', '=', 'bts_kota.kdkota')
                        ->join('bts_kecamatan', 'bts_lokasi.kdkec', '=', 'bts_kecamatan.kdkec')
                        ->where('bts_kecamatan.kdkec', "$kec")
                        ->orderBy('bts_crossover.populasi','asc')
                        ->orderBy('bts_crossover.iterasi','asc')
                        ->get();
        }
        return response()->json($crossover);
    }

    public function filterco2($kec)
    {
        if ($kec == '0') {
            $populasi = DB::table('bts_populasi3')
                ->join('bts_kecamatan',DB::raw('trim(substring(bts_populasi3.kdlokasi,1,4))'),'=','bts_kecamatan.kdkec')
                ->join('bts_konfigurasi','bts_kecamatan.kdkec','=','bts_konfigurasi.kdkec')
                ->select(DB::raw('bts_populasi3.id as id'),DB::raw('bts_populasi3.populasi as populasi'),DB::raw('bts_populasi3.iterasi as iterasi'),DB::raw('bts_populasi3.kdlokasi as kdlokasi'),DB::raw('bts_populasi3.latitude as latitude'),DB::raw('bts_populasi3.longitude  as longitude'),DB::raw('bts_konfigurasi.latitude as nearlat'),DB::raw('bts_konfigurasi.longitude as nearlong'),DB::raw('bts_populasi3.evaluasi as fx'),DB::raw('bts_populasi3.co as co'))
                ->orderBy('bts_populasi3.populasi','asc')
                ->orderBy('bts_populasi3.iterasi','asc')
                ->get();
        } else
        {
            $populasi = DB::table('bts_populasi3')
                ->join('bts_kecamatan',DB::raw('trim(substring(bts_populasi3.kdlokasi,1,4))'),'=','bts_kecamatan.kdkec')
                ->join('bts_konfigurasi','bts_kecamatan.kdkec','=','bts_konfigurasi.kdkec')
                ->select(DB::raw('bts_populasi3.id as id'),DB::raw('bts_populasi3.populasi as populasi'),DB::raw('bts_populasi3.iterasi as iterasi'),DB::raw('bts_populasi3.kdlokasi as kdlokasi'),DB::raw('bts_populasi3.latitude as latitude'),DB::raw('bts_populasi3.longitude  as longitude'),DB::raw('bts_konfigurasi.latitude as nearlat'),DB::raw('bts_konfigurasi.longitude as nearlong'),DB::raw('bts_populasi3.evaluasi as fx'),DB::raw('bts_populasi3.co as co'))
                ->where('bts_kecamatan.kdkec',$kec)
                ->orderBy('bts_populasi3.id','asc')
                ->get();
        }
        return response()->json($populasi);
    }
}
