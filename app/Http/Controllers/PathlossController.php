<?php

namespace App\Http\Controllers;

use App\Models\Kota;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Illuminate\Support\Facades\Input;

class PathlossController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kota = Kota::lists('kota','kdkota');
        return view ('form.pathloss.index',compact('kota'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function postPathloss()
    {
        DB::statement('call akumpathloss("' . Input::get('kdkota') . '")');
        return response()->json(['success' => 'true']);
    }

    public function anyData($kota)
    {
        $pathloss=DB::table('bts_kecamatan')
                    ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
                    ->join('bts_kategori','bts_kecamatan.kdkat','=','bts_kategori.kdkat')
                    ->select('bts_kecamatan.id','bts_kota.kota','bts_kecamatan.kecamatan','bts_kategori.kategori',
                      DB::raw('(46.3+33.9*LOG10((SELECT bts_okumura.fuplink from bts_okumura where bts_okumura.id=1))-13.82*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END))-((SELECT bts_okumura.auplink from bts_okumura where bts_okumura.id=1))+(44.9-6.55*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END)))*LOG10((select sqrt(((select bts_kapenodeb.qam64 * 1000 from bts_kapenodeb WHERE bts_kapenodeb.konfig=1)/bts_obq.obq) / 2.59) from bts_obq where bts_obq.kdkec=bts_kecamatan.kdkec) + (select bts_okumura.cm from bts_okumura where bts_okumura.id=1))) as pathlossu'),
                      DB::raw('(46.3+33.9*LOG10((SELECT bts_okumura.fdownlink from bts_okumura where bts_okumura.id=1))-13.82*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END))-((SELECT bts_okumura.adownlink from bts_okumura where bts_okumura.id=1))+(44.9-6.55*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END)))*LOG10((select sqrt(((select bts_kapenodeb.qam64 * 1000 from bts_kapenodeb WHERE bts_kapenodeb.konfig=1)/bts_obq.obq) / 2.59) from bts_obq  where bts_obq.kdkec=bts_kecamatan.kdkec)+ (select bts_okumura.cm from bts_okumura where bts_okumura.id=1))) as pathlossd'),
                      DB::raw('(select bts_okumura.maplu from bts_okumura where bts_okumura.id=1) as maplu'),DB::raw('(select bts_okumura.mapld from bts_okumura where bts_okumura.id=1) as mapld'),
                      DB::raw('IF((46.3+33.9*LOG10((SELECT bts_okumura.fuplink from bts_okumura where bts_okumura.id=1))-13.82*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END))-((SELECT bts_okumura.auplink from bts_okumura where bts_okumura.id=1))+(44.9-6.55*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END)))*LOG10((select sqrt(((select bts_kapenodeb.qam64 * 1000 from bts_kapenodeb WHERE bts_kapenodeb.konfig=1)/bts_obq.obq) / 2.59) from bts_obq where bts_obq.kdkec=bts_kecamatan.kdkec) + (select bts_okumura.cm from bts_okumura where bts_okumura.id=1))) < (select bts_okumura.maplu from bts_okumura where bts_okumura.id=1),1,0) as ku'),
                      DB::raw('IF((46.3+33.9*LOG10((SELECT bts_okumura.fdownlink from bts_okumura where bts_okumura.id=1))-13.82*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END))-((SELECT bts_okumura.adownlink from bts_okumura where bts_okumura.id=1))+(44.9-6.55*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END)))*LOG10((select sqrt(((select bts_kapenodeb.qam64 * 1000 from bts_kapenodeb WHERE bts_kapenodeb.konfig=1)/bts_obq.obq) / 2.59) from bts_obq  where bts_obq.kdkec=bts_kecamatan.kdkec)+ (select bts_okumura.cm from bts_okumura where bts_okumura.id=1))) < (select bts_okumura.mapld from bts_okumura where bts_okumura.id=1),1,0) as kd'))
                    ->where('bts_kecamatan.kdkota','=',$kota)
                    ->get();
        return response()->json($pathloss);
    }
}
