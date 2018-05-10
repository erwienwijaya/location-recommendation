<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class PetaController extends Controller
{
    public function index()
    {
        $selkec=DB::table('bts_pathloss')
            ->join('bts_kecamatan','bts_pathloss.kdkec','=','bts_kecamatan.kdkec')
            ->select('bts_kecamatan.kdkec','bts_kecamatan.kecamatan')
            ->lists('kecamatan','kdkec');

        return view('form.peta.index',['selkec' => $selkec]);
    }

    public function anyData()
    {
        $petax = DB::table('bts_downtilt')
                    ->select(DB::raw('kdlokasi1 as lokasi'),DB::raw('lat1 as latitude'),DB::raw('long1 as longitude'),DB::raw('(select bts_kecamatan.kecamatan from bts_kecamatan where bts_kecamatan.kdkec = trim(substring(bts_downtilt.kdlokasi1,1,4))) as kecamatan'))
                    ->where('dt','<=',DB::raw('(select overlap from bts_okumura where id=1)'))
                    ->where('dt','>=',DB::raw('-(select blindspot from bts_okumura where id=1)'))
                    ->groupBy('kdlokasi1');


        $peta = DB::table('bts_downtilt')
                ->select(DB::raw('kdlokasi2 as lokasi'),DB::raw('lat2 as latitude'),DB::raw('long2 as longitude'),DB::raw('(select bts_kecamatan.kecamatan from bts_kecamatan where bts_kecamatan.kdkec = trim(substring(bts_downtilt.kdlokasi2,1,4))) as kecamatan'))
                ->where('dt','<=',DB::raw('(select overlap from bts_okumura where id=1)'))
                ->where('dt','>=',DB::raw('-(select blindspot from bts_okumura where id=1)'))
                ->groupBy('kdlokasi2')
                ->union($petax)
                ->get();

        return response()->json($peta);
    }

    public function filterMap($kec)
    {
        if ($kec == '0') {
            $petax = DB::table('bts_downtilt')
                ->select(DB::raw('kdlokasi1 as lokasi'),DB::raw('lat1 as latitude'),DB::raw('long1 as longitude'),DB::raw('(select bts_kecamatan.kecamatan from bts_kecamatan where bts_kecamatan.kdkec = trim(substring(bts_downtilt.kdlokasi1,1,4))) as kecamatan'))
                ->where('dt','<=',DB::raw('(select overlap from bts_okumura where id=1)'))
                ->where('dt','>=',DB::raw('-(select blindspot from bts_okumura where id=1)'))
                ->groupBy('kdlokasi1');


            $peta = DB::table('bts_downtilt')
                ->select(DB::raw('kdlokasi2 as lokasi'),DB::raw('lat2 as latitude'),DB::raw('long2 as longitude'),DB::raw('(select bts_kecamatan.kecamatan from bts_kecamatan where bts_kecamatan.kdkec = trim(substring(bts_downtilt.kdlokasi2,1,4))) as kecamatan'))
                ->where('dt','<=',DB::raw('(select overlap from bts_okumura where id=1)'))
                ->where('dt','>=',DB::raw('-(select blindspot from bts_okumura where id=1)'))
                ->groupBy('kdlokasi2')
                ->union($petax)
                ->get();
        } else
        {
            $petax = DB::table('bts_downtilt')
                ->select(DB::raw('kdlokasi1 as lokasi'),DB::raw('lat1 as latitude'),DB::raw('long1 as longitude'),DB::raw('(select bts_kecamatan.kecamatan from bts_kecamatan where bts_kecamatan.kdkec = trim(substring(bts_downtilt.kdlokasi1,1,4))) as kecamatan'))
                ->where('dt','<=',DB::raw('(select overlap from bts_okumura where id=1)'))
                ->where('dt','>=',DB::raw('-(select blindspot from bts_okumura where id=1)'))
                ->where(DB::raw('trim(substring(kdlokasi1,1,4))'),$kec)
                ->groupBy('kdlokasi1');


            $peta = DB::table('bts_downtilt')
                ->select(DB::raw('kdlokasi2 as lokasi'),DB::raw('lat2 as latitude'),DB::raw('long2 as longitude'),DB::raw('(select bts_kecamatan.kecamatan from bts_kecamatan where bts_kecamatan.kdkec = trim(substring(bts_downtilt.kdlokasi2,1,4))) as kecamatan'))
                ->where('dt','<=',DB::raw('(select overlap from bts_okumura where id=1)'))
                ->where('dt','>=',DB::raw('-(select blindspot from bts_okumura where id=1)'))
                ->where(DB::raw('trim(substring(kdlokasi1,1,4))'),$kec)
                ->groupBy('kdlokasi2')
                ->union($petax)
                ->get();
        }
        return response()->json($peta);
    }

    public function filterMap2($kec)
    {
        $petax = DB::table('bts_downtilt')
            ->select(DB::raw('kdlokasi1 as lokasi'),DB::raw('lat1 as latitude'),DB::raw('long1 as longitude'),DB::raw('(select bts_kecamatan.kecamatan from bts_kecamatan where bts_kecamatan.kdkec = trim(substring(bts_downtilt.kdlokasi1,1,4))) as kecamatan'))
            ->where('dt','<=',DB::raw('(select overlap from bts_okumura where id=1)'))
            ->where('dt','>=',DB::raw('-(select blindspot from bts_okumura where id=1)'))
            ->where(DB::raw('trim(substring(kdlokasi1,1,4))'),$kec)
            ->groupBy('kdlokasi1');

        $peta = DB::table('bts_downtilt')
            ->select(DB::raw('kdlokasi2 as lokasi'),DB::raw('lat2 as latitude'),DB::raw('long2 as longitude'),DB::raw('(select bts_kecamatan.kecamatan from bts_kecamatan where bts_kecamatan.kdkec = trim(substring(bts_downtilt.kdlokasi2,1,4))) as kecamatan'))
            ->where('dt','<=',DB::raw('(select overlap from bts_okumura where id=1)'))
            ->where('dt','>=',DB::raw('-(select blindspot from bts_okumura where id=1)'))
            ->where(DB::raw('trim(substring(kdlokasi1,1,4))'),$kec)
            ->groupBy('kdlokasi2')
            ->union($petax)
            ->get();

        return response()->json($peta);
    }


    public function getDetail($kec)
    {
        $center=DB::table('bts_konfigurasi')
                    ->join('bts_kecamatan','bts_konfigurasi.kdkec','=','bts_kecamatan.kdkec')
                    ->select('bts_kecamatan.kdkec','bts_kecamatan.kecamatan','bts_konfigurasi.latitude','bts_konfigurasi.longitude')
                    ->where('bts_kecamatan.kdkec',$kec)
                    ->first();

        return view('form.peta.detil',compact('center'));
    }
}
