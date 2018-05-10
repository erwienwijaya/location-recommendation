<?php

namespace App\Http\Controllers;

use App\Models\Kecamatan;
use App\Models\Kota;
use App\Models\Kategori;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Yajra\Datatables\Datatables;

class KecamatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('form.kecamatan.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $selkota=Kota::lists('kota','kdkota');
        $selkategori=Kategori::lists('kategori','kdkat');
        return view('form.kecamatan.create',['selkota' => $selkota,'selkategori' => $selkategori]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\KecamatanRequest $request)
    {
        $kecs=new Kecamatan();
        $kecs->kdkec=$this->otocode();
        $kecs->kdkota=$request->kota;
        $kecs->kdkat=$request->kategori;
        $kecs->kecamatan=$request->kecamatan;
        $kecs->luas=$request->luas;
        $kecs->save();

        \Session::flash('create', 'Data kecamatan berhasil ditambahkan');
        return redirect('/kecamatan');
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
        $selkota=Kota::lists('kota','kdkota');
        $selkategori=Kategori::lists('kategori','kdkat');
        $kecs=DB::table('bts_kecamatan')
                ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
                ->select('bts_kecamatan.*','bts_kota.kdkota','bts_kota.kota')
                ->where('bts_kecamatan.id','=',$id)->first();
        return view('form.kecamatan.edit',['selkota' => $selkota,'selkategori' => $selkategori,'kecs' => $kecs]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\KecamatanRequest $request, $id)
    {
        $kecs=Kecamatan::find($id);
        $kecs -> kdkec = $request->kode;
        $kecs -> kdkota = $request->kota;
        $kecs -> kdkat = $request->kategori;
        $kecs -> kecamatan = $request->kecamatan;
        $kecs -> luas = $request->luas;
        $kecs -> save();

        \Session::flash('update', 'Data kecamatan berhasil dirubah');
        return redirect('/kecamatan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kecs=Kecamatan::find($id);
        $kecs->delete();

        \Session::flash('remove', 'Data kecamatan berhasil dihapus!');
        return redirect('/kecamatan');
    }

    public function otocode()
    {
        //generate automatic key
        $sql = 'SELECT TRIM(CONCAT("P",CASE LENGTH(IFNULL(MAX(CAST(SUBSTRING(kdkec,2,4) AS UNSIGNED)) ,0) + 1)
                      WHEN 1 THEN CONCAT("00",IFNULL(MAX(CAST(SUBSTRING(kdkec,2,4) AS UNSIGNED)) ,0) + 1)                                
                      WHEN 2 THEN CONCAT("0",IFNULL(MAX(CAST(SUBSTRING(kdkec,2,4) AS UNSIGNED)) ,0) + 1)
                      WHEN 3 THEN MAX(CAST(SUBSTRING(kdkec,2,4) AS UNSIGNED)) + 1
                    END)) AS nilai
               FROM bts_kecamatan';
        $keys = DB::select($sql);
        foreach ($keys as $key) {
            return $key->nilai;
        }
    }

    public function anyData()
    {
        $kecs=DB::table('bts_kecamatan')
                    ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
                    ->join('bts_kategori','bts_kecamatan.kdkat','=','bts_kategori.kdkat')
                    ->select(['bts_kecamatan.id','bts_kecamatan.kdkec','bts_kota.kota','bts_kategori.kategori','bts_kecamatan.kecamatan','bts_kecamatan.luas']);

        return Datatables::of($kecs)
            ->addColumn('action', function ($kecs) {
                return '<div align="center">' .
                '<a href="kecamatan/' . $kecs->id . '/edit" class="btn btn-xs btn-primary btn-circle" ><i class="fa fa-pencil aria-hidden="true"></i></a>' . ' ' .
                \Form::open(array('method'=>'DELETE', 'route' => array('kecamatan.destroy',"$kecs->id"),'style' => 'display:inline')) .
                '<a href="#" data-toggle="modal" class="btn btn-xs btn-warning btn-circle" type="button" data-target="#konfirmHapus"  data-title="Hapus Kecamatan" data-message="Anda yakin menghapus ?"><i class="fa fa-remove" aria-hidden="true"></i></a>' .
                \Form::close() .
                '</div>';
            })
            ->make(true);
    }
}
