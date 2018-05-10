<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class LaporanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('form.laporan.index');
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

    public function anyData()
    {
        $laporan = DB::table('bts_pathloss')
                    ->select('id',DB::raw('(select bts_kota.kota from bts_kota where bts_kota.kdkota = bts_pathloss.kdkota) as kota'),DB::raw('(select bts_kecamatan.kecamatan from bts_kecamatan where bts_kecamatan.kdkec = bts_pathloss.kdkec) as kecamatan'),DB::raw('(select bts_kategori.kategori from bts_kategori where bts_kategori.kdkat = bts_pathloss.kdkat) as kategori'),'puplink','pdownlink','maplu','mapld','layaku','layakd')
                    ->get();

        return response()->json($laporan);
    }


}
