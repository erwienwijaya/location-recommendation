<?php

namespace App\Http\Controllers;

use App\Models\Kecamatan;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Illuminate\Support\Facades\Input;

class PopulasiController extends Controller
{
    //
    public function index()
    {
        $selkec=DB::table('bts_pathloss')
                        ->join('bts_kecamatan','bts_pathloss.kdkec','=','bts_kecamatan.kdkec')
                        ->select('bts_kecamatan.kdkec','bts_kecamatan.kecamatan')
                        ->lists('kecamatan','kdkec');
        return view('form.populasi.index',['selkec' => $selkec]);
    }

    public function anyData()
    {
        $populasi = DB::table('bts_populasi')
                        ->join('bts_lokasi','bts_populasi.kdlokasi','=','bts_lokasi.kdlokasi')
                        ->join('bts_kota','bts_lokasi.kdkota','=','bts_kota.kdkota')
                        ->join('bts_kecamatan','bts_lokasi.kdkec','=','bts_kecamatan.kdkec')
                        ->join('bts_konfigurasi','bts_kecamatan.kdkec','=','bts_konfigurasi.kdkec')
                        ->select(DB::raw('bts_populasi.id as id'),DB::raw('bts_populasi.populasi as populasi'),DB::raw('bts_populasi.iterasi as iterasi'),DB::raw('bts_lokasi.kdlokasi as kdlokasi'),DB::raw('bts_lokasi.latitude as latitude'),DB::raw('bts_lokasi.longitude  as longitude'),DB::raw('bts_konfigurasi.latitude as nearlat'),DB::raw('bts_konfigurasi.longitude as nearlong'),DB::raw('bts_populasi.evaluasi as fx'),DB::raw('round((1 / bts_populasi.evaluasi),3) as evaluasi'))
                        ->get();

        return response()->json($populasi);
    }

    public function generatePop()
    {
        DB::statement('call generatepop()');
        return response()->json(['success' => 'true']);
    }

    public function filterPop($kec)
    {
        if ($kec == '0') {
            $populasi = DB::table('bts_populasi')
                ->join('bts_lokasi', 'bts_populasi.kdlokasi', '=', 'bts_lokasi.kdlokasi')
                ->join('bts_kota', 'bts_lokasi.kdkota', '=', 'bts_kota.kdkota')
                ->join('bts_kecamatan', 'bts_lokasi.kdkec', '=', 'bts_kecamatan.kdkec')
                ->join('bts_konfigurasi', 'bts_kecamatan.kdkec', '=', 'bts_konfigurasi.kdkec')
                ->select(DB::raw('bts_populasi.id as id'), DB::raw('bts_populasi.populasi as populasi'), DB::raw('bts_populasi.iterasi as iterasi'), DB::raw('bts_lokasi.kdlokasi as kdlokasi'), DB::raw('bts_lokasi.latitude as latitude'), DB::raw('bts_lokasi.longitude  as longitude'), DB::raw('bts_konfigurasi.latitude as nearlat'), DB::raw('bts_konfigurasi.longitude as nearlong'), DB::raw('bts_populasi.evaluasi as fx'),DB::raw('round((1 / bts_populasi.evaluasi),3) as evaluasi'))
                ->get();
        } else
        {
            $populasi = DB::table('bts_populasi')
                ->join('bts_lokasi', 'bts_populasi.kdlokasi', '=', 'bts_lokasi.kdlokasi')
                ->join('bts_kota', 'bts_lokasi.kdkota', '=', 'bts_kota.kdkota')
                ->join('bts_kecamatan', 'bts_lokasi.kdkec', '=', 'bts_kecamatan.kdkec')
                ->join('bts_konfigurasi', 'bts_kecamatan.kdkec', '=', 'bts_konfigurasi.kdkec')
                ->select(DB::raw('bts_populasi.id as id'), DB::raw('bts_populasi.populasi as populasi'), DB::raw('bts_populasi.iterasi as iterasi'), DB::raw('bts_lokasi.kdlokasi as kdlokasi'), DB::raw('bts_lokasi.latitude as latitude'), DB::raw('bts_lokasi.longitude  as longitude'), DB::raw('bts_konfigurasi.latitude as nearlat'), DB::raw('bts_konfigurasi.longitude as nearlong'), DB::raw('bts_populasi.evaluasi as fx'),DB::raw('round((1 / bts_populasi.evaluasi),3) as evaluasi'))
                ->where('bts_kecamatan.kdkec', "$kec")
                ->get();
        }
        return response()->json($populasi);
    }
}
