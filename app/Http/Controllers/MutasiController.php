<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class MutasiController extends Controller
{
    public function index()
    {
        $selkec=DB::table('bts_pathloss')
            ->join('bts_kecamatan','bts_pathloss.kdkec','=','bts_kecamatan.kdkec')
            ->select('bts_kecamatan.kdkec','bts_kecamatan.kecamatan')
            ->lists('kecamatan','kdkec');

        return view ('form.mutasi.index',['selkec' => $selkec]);
    }

    public function anyData()
    {
        $mutasi = DB::table('bts_mutasi')->get();
        return response()->json($mutasi);
    }

    public function filterMt($kec)
    {
        if ($kec == '0') {
            $mutasi = DB::table('bts_mutasi')->get();
        } else
        {
            $mutasi = DB::table('bts_mutasi')
                ->where(DB::raw('trim(substring(bts_mutasi.kdlokasi,1,4))'), "$kec")
                ->orderBy('bts_mutasi.iterasi','asc')
                ->get();
        }
        return response()->json($mutasi);
    }

    public function populasiBaru()
    {
        $populasi = DB::table('bts_populasi4')
            ->join('bts_kecamatan',DB::raw('trim(substring(bts_populasi4.kdlokasi,1,4))'),'=','bts_kecamatan.kdkec')
            ->join('bts_konfigurasi','bts_kecamatan.kdkec','=','bts_konfigurasi.kdkec')
            ->select(DB::raw('bts_populasi4.id as id'),DB::raw('bts_populasi4.populasi as populasi'),DB::raw('bts_populasi4.iterasi as iterasi'),DB::raw('bts_populasi4.kdlokasi as kdlokasi'),DB::raw('bts_populasi4.latitude as latitude'),DB::raw('bts_populasi4.longitude  as longitude'),DB::raw('bts_konfigurasi.latitude as nearlat'),DB::raw('bts_konfigurasi.longitude as nearlong'),DB::raw('bts_populasi4.evaluasi as fx'),DB::raw('bts_populasi4.mt1 as mt1'),DB::raw('bts_populasi4.mt2 as mt2'))
            ->get();

        return response()->json($populasi);
    }

    public function filterMt2($kec)
    {
        if ($kec == '0') {
            $populasi = DB::table('bts_populasi4')
                ->join('bts_kecamatan',DB::raw('trim(substring(bts_populasi4.kdlokasi,1,4))'),'=','bts_kecamatan.kdkec')
                ->join('bts_konfigurasi','bts_kecamatan.kdkec','=','bts_konfigurasi.kdkec')
                ->select(DB::raw('bts_populasi4.id as id'),DB::raw('bts_populasi4.populasi as populasi'),DB::raw('bts_populasi4.iterasi as iterasi'),DB::raw('bts_populasi4.kdlokasi as kdlokasi'),DB::raw('bts_populasi4.latitude as latitude'),DB::raw('bts_populasi4.longitude  as longitude'),DB::raw('bts_konfigurasi.latitude as nearlat'),DB::raw('bts_konfigurasi.longitude as nearlong'),DB::raw('bts_populasi4.evaluasi as fx'),DB::raw('bts_populasi4.mt1 as mt1'),DB::raw('bts_populasi4.mt2 as mt2'))
                ->get();
        } else
        {
            $populasi = DB::table('bts_populasi4')
                ->join('bts_kecamatan',DB::raw('trim(substring(bts_populasi4.kdlokasi,1,4))'),'=','bts_kecamatan.kdkec')
                ->join('bts_konfigurasi','bts_kecamatan.kdkec','=','bts_konfigurasi.kdkec')
                ->select(DB::raw('bts_populasi4.id as id'),DB::raw('bts_populasi4.populasi as populasi'),DB::raw('bts_populasi4.iterasi as iterasi'),DB::raw('bts_populasi4.kdlokasi as kdlokasi'),DB::raw('bts_populasi4.latitude as latitude'),DB::raw('bts_populasi4.longitude  as longitude'),DB::raw('bts_konfigurasi.latitude as nearlat'),DB::raw('bts_konfigurasi.longitude as nearlong'),DB::raw('bts_populasi4.evaluasi as fx'),DB::raw('bts_populasi4.mt1 as mt1'),DB::raw('bts_populasi4.mt2 as mt2'))
                ->where('bts_kecamatan.kdkec',$kec)
                ->orderBy('bts_populasi4.id','asc')
                ->get();
        }
        return response()->json($populasi);
    }

}
