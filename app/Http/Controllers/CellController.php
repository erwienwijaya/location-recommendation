<?php

namespace App\Http\Controllers;

use App\Models\Kapasitas;
use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use DB;

class CellController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $selmodel=Kapasitas::lists('model','model');
        return view ('form.datacell.index',compact('selmodel'));
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

    public function getModel($model)
    {
        $models=Kapasitas::where('model',$model)
                ->first();

        return response()->json($models);
    }

    public function getSaveKonfig()
    {
        $save=Kapasitas::where('konfig','1')
                ->first();

        return response()->json($save);
    }

    public function postKonfig()
    {
        Kapasitas::where('konfig','1')
                    ->update(['konfig' => 0]);

        Kapasitas::where('model',Input::get('model'))
                    ->update(['konfig' => 1]);

        return response()->json(['success' => 'true']);
    }

    public function getCell()
    {
        $cell=DB::table('bts_obq')
                ->join('bts_kecamatan','bts_obq.kdkec','=','bts_kecamatan.kdkec')
                ->select('bts_kecamatan.kdkec','bts_kecamatan.kecamatan','bts_kecamatan.luas',DB::raw('round(((select x.qam64 * 1000 from bts_kapenodeb x where x.konfig=1)/bts_obq.obq),2) as luascell'),DB::raw('ceil(bts_kecamatan.luas / ((select x.qam64 * 1000 from bts_kapenodeb x WHERE x.konfig=1)/bts_obq.obq)) as jmlsel'),DB::raw('round(sqrt(((select x.qam64 * 1000 from bts_kapenodeb x WHERE x.konfig=1)/bts_obq.obq) / 2.59),2) as radius'))
                ->get();

        return response()->json($cell);
    }
}
