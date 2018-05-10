<?php

namespace App\Http\Controllers;

use App\Models\Kota;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Yajra\Datatables\Datatables;

class KotaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view ('form.kota.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('form.kota.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\KotaRequest $request)
    {
        $kotas = new Kota;
        $kotas->kdkota = $this->otocode();
        $kotas->kota = $request->kota;
        $kotas->save();

        \Session::flash('create', 'Data kota / kabupaten berhasil ditambahkan');
        return redirect('/kota');
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
        $kotas=  Kota::find($id);
        return view ('form.kota.edit',['kotas' => $kotas] );
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\KotaRequest $request, $id)
    {
        $kotas = Kota::find($id);
        $kotas -> kdkota = $request->kode;
        $kotas -> kota = $request->kota;
        $kotas -> save();

        \Session::flash('update', 'Data kota / kabupaten berhasil dirubah');
        return redirect('/kota');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kotas=Kota::find($id);
        $kotas->delete();

        \Session::flash('remove', 'Data kota / kabupaten berhasil dihapus!');
        return redirect('/kota');
    }

    public function otocode()
    {
        //generate automatic key
        $sql='SELECT TRIM(CONCAT("K",CASE LENGTH(IFNULL(MAX(CAST(SUBSTRING(kdkota,2,4) AS UNSIGNED)) ,0) + 1)
                      WHEN 1 THEN CONCAT("00",IFNULL(MAX(CAST(SUBSTRING(kdkota,2,4) AS UNSIGNED)) ,0) + 1)                                
                      WHEN 2 THEN CONCAT("0",IFNULL(MAX(CAST(SUBSTRING(kdkota,2,4) AS UNSIGNED)) ,0) + 1)
                      WHEN 3 THEN MAX(CAST(SUBSTRING(kdkota,2,4) AS UNSIGNED)) + 1
                    END)) AS nilai
               FROM bts_kota';
        $keys=DB::select($sql);
        foreach ($keys as $key) {
            return $key->nilai;
        }
    }

    public function anyData()
    {
        $kota=Kota::select(['id','kdkota','kota']);

        return Datatables::of($kota)
            ->addColumn('action', function ($kota) {
                return '<div align="center">' .
                    '<a href="kota/' . $kota->id . '/edit" class="btn btn-xs btn-primary btn-circle" ><i class="fa fa-pencil aria-hidden="true"></i></a>' . ' ' .
                    \Form::open(array('method'=>'DELETE', 'route' => array('kota.destroy',"$kota->id"),'style' => 'display:inline')) .
                    '<a href="#" data-toggle="modal" class="btn btn-xs btn-warning btn-circle" type="button" data-target="#konfirmHapus"  data-title="Hapus Kota / Kabupaten" data-message="Anda yakin menghapus ?"><i class="fa fa-remove" aria-hidden="true"></i></a>' .
                    \Form::close() .
                    '</div>';

            })->make(true);
    }


}
