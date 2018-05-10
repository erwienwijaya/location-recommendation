<?php

namespace App\Http\Controllers;

use App\Models\Kapasitas;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Illuminate\Support\Facades\Input;

class KapasitasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('form.kapasitas.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return  view('form.kapasitas.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\KapasitaRequest $request)
    {
        $kapasitas=new Kapasitas();
        $kapasitas->model=$this->otocode();
        $kapasitas->bw=$request->bandwidth;
        $kapasitas->qpsk=$request->qpsk;
        $kapasitas->qam16=$request->qam16;
        $kapasitas->qam64=$request->qam64;
        $kapasitas->save();

        \Session::flash('create', 'Data kapasitas berhasil ditambahkan');
        return redirect('/kapasitas');
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
        $kapasitas=Kapasitas::find($id);
        return view('form.kapasitas.edit',['kapasitas' => $kapasitas]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\KapasitaRequest $request, $id)
    {
        $kapasitas=Kapasitas::find($id);
        $kapasitas->model=$request->model;
        $kapasitas->bw=$request->bandwidth;
        $kapasitas->qpsk=$request->qpsk;
        $kapasitas->qam16=$request->qam16;
        $kapasitas->qam64=$request->qam64;
        $kapasitas->save();

        \Session::flash('update', 'Data kapasitas berhasil dirubah');
        return redirect('/kapasitas');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kapasitas=Kapasitas::find($id);
        $kapasitas->delete();

        \Session::flash('remove', 'Data kapasitas berhasil dihapus!');
        return redirect('/kapasitas');
    }

    public function otocode()
    {
        $sql="select CONCAT('Model-',max(cast(SUBSTR(model,7,1) as UNSIGNED)) + 1) as nilai from bts_kapenodeb";

        $keys=DB::select($sql);
        foreach ($keys as $key) {
            return $key->nilai;
        }
    }

    public function getAnyData()
    {
        $kapasitas=Kapasitas::all();
        return response()->json($kapasitas);
    }

}
