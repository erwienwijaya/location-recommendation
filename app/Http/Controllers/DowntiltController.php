<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class DowntiltController extends Controller
{
    public function index()
    {
        $selkec=DB::table('bts_pathloss')
            ->join('bts_kecamatan','bts_pathloss.kdkec','=','bts_kecamatan.kdkec')
            ->select('bts_kecamatan.kdkec','bts_kecamatan.kecamatan')
            ->lists('kecamatan','kdkec');

        return view ('form.downtilt.index',['selkec' => $selkec]);
    }

    public function anyData()
    {
        $dt = DB::table('bts_downtilt')->get();
        return response()->json($dt);
    }

    public function filterDt($kec)
    {
        if ($kec == '0') {
            $dt = DB::table('bts_downtilt')->get();
        } else
        {
            $dt = DB::table('bts_downtilt')
                ->where(DB::raw('trim(substring(bts_downtilt.kdlokasi1,1,4))'), "$kec")
                ->get();
        }
        return response()->json($dt);
    }

    public function generateDt()
    {
        DB::statement('call downtilt()');
        return response()->json(['success' => 'true']);
    }
}
