<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class SeleksiController extends Controller
{
    public function index()
    {
        $selkec=DB::table('bts_pathloss')
                ->join('bts_kecamatan','bts_pathloss.kdkec','=','bts_kecamatan.kdkec')
                ->select('bts_kecamatan.kdkec','bts_kecamatan.kecamatan')
                ->lists('kecamatan','kdkec');
        return view('form.seleksi.index',compact('selkec'));
    }

    public function anyData()
    {
        $seleksi = DB::table('bts_seleksi')
                        ->get();

        return  response()->json($seleksi);
    }

    public function filterSel($kec)
    {
        if ($kec == '0') {
            $seleksi = DB::table('bts_seleksi')
                            ->get();
        } else
        {
            $seleksi = DB::table('bts_seleksi')
                ->join('bts_lokasi', 'bts_seleksi.kdlokasi', '=', 'bts_lokasi.kdlokasi')
                ->join('bts_kota', 'bts_lokasi.kdkota', '=', 'bts_kota.kdkota')
                ->join('bts_kecamatan', 'bts_lokasi.kdkec', '=', 'bts_kecamatan.kdkec')
                ->where('bts_kecamatan.kdkec', "$kec")
                ->orderBy('bts_seleksi.id','asc')
                ->get();
        }
        return response()->json($seleksi);
    }

    public function populasiBaru()
    {
        $populasi = DB::table('bts_populasi2')
            ->join('bts_lokasi','bts_populasi2.kdlokasi','=','bts_lokasi.kdlokasi')
            ->join('bts_kota','bts_lokasi.kdkota','=','bts_kota.kdkota')
            ->join('bts_kecamatan','bts_lokasi.kdkec','=','bts_kecamatan.kdkec')
            ->join('bts_konfigurasi','bts_kecamatan.kdkec','=','bts_konfigurasi.kdkec')
            ->select(DB::raw('bts_populasi2.id as id'),DB::raw('bts_populasi2.populasi as populasi'),DB::raw('bts_populasi2.iterasi as iterasi'),DB::raw('bts_lokasi.kdlokasi as kdlokasi'),DB::raw('bts_lokasi.latitude as latitude'),DB::raw('bts_lokasi.longitude  as longitude'),DB::raw('bts_konfigurasi.latitude as nearlat'),DB::raw('bts_konfigurasi.longitude as nearlong'),DB::raw('bts_populasi2.evaluasi as fx'))
            ->get();

        return response()->json($populasi);
    }

    public function filterSel2($kec)
    {
        if ($kec == '0') {
            $populasi = DB::table('bts_populasi2')
                            ->join('bts_lokasi','bts_populasi2.kdlokasi','=','bts_lokasi.kdlokasi')
                            ->join('bts_kota','bts_lokasi.kdkota','=','bts_kota.kdkota')
                            ->join('bts_kecamatan','bts_lokasi.kdkec','=','bts_kecamatan.kdkec')
                            ->join('bts_konfigurasi','bts_kecamatan.kdkec','=','bts_konfigurasi.kdkec')
                            ->select(DB::raw('bts_populasi2.id as id'),DB::raw('bts_populasi2.populasi as populasi'),DB::raw('bts_populasi2.iterasi as iterasi'),DB::raw('bts_lokasi.kdlokasi as kdlokasi'),DB::raw('bts_lokasi.latitude as latitude'),DB::raw('bts_lokasi.longitude  as longitude'),DB::raw('bts_konfigurasi.latitude as nearlat'),DB::raw('bts_konfigurasi.longitude as nearlong'),DB::raw('bts_populasi2.evaluasi as fx'))
                            ->get();
        } else
        {
            $populasi = DB::table('bts_populasi2')
                        ->join('bts_lokasi','bts_populasi2.kdlokasi','=','bts_lokasi.kdlokasi')
                        ->join('bts_kota','bts_lokasi.kdkota','=','bts_kota.kdkota')
                        ->join('bts_kecamatan','bts_lokasi.kdkec','=','bts_kecamatan.kdkec')
                        ->join('bts_konfigurasi','bts_kecamatan.kdkec','=','bts_konfigurasi.kdkec')
                        ->select(DB::raw('bts_populasi2.id as id'),DB::raw('bts_populasi2.populasi as populasi'),DB::raw('bts_populasi2.iterasi as iterasi'),DB::raw('bts_lokasi.kdlokasi as kdlokasi'),DB::raw('bts_lokasi.latitude as latitude'),DB::raw('bts_lokasi.longitude  as longitude'),DB::raw('bts_konfigurasi.latitude as nearlat'),DB::raw('bts_konfigurasi.longitude as nearlong'),DB::raw('bts_populasi2.evaluasi as fx'))
                        ->where('bts_kecamatan.kdkec',$kec)
                        ->orderBy('bts_populasi2.id','asc')
                        ->get();
        }
        return response()->json($populasi);
    }
}
