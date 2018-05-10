<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Yajra\Datatables\Datatables;

class KategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('form.kategori.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('form.kategori.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\KategoriRequest $request)
    {
        $kats = new Kategori;
        $kats->kdkat = $this->otocode();
        $kats->kategori = $request->kategori;
        $kats->save();

        \Session::flash('create', 'Data kategori berhasil ditambahkan');
        return redirect('/kategori');
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
        $kats=  Kategori::find($id);
        return view ('form.kategori.edit',['kats' => $kats] );
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\KategoriRequest $request, $id)
    {
        $kats = Kategori::find($id);
        $kats -> kdkat = $request->kode;
        $kats -> kategori = $request->kategori;
        $kats -> save();

        \Session::flash('update', 'Data kategori berhasil dirubah');
        return redirect('/kategori');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kats=Kategori::find($id);
        $kats->delete();

        \Session::flash('remove', 'Data kategori berhasil dihapus!');
        return redirect('/kategori');
    }

    public function otocode()
    {
        //generate automatic key
        $sql='SELECT TRIM(CONCAT("C",CASE LENGTH(IFNULL(MAX(CAST(SUBSTRING(kdkat,2,3) AS UNSIGNED)) ,0) + 1)
                      WHEN 1 THEN CONCAT("0",IFNULL(MAX(CAST(SUBSTRING(kdkat,2,3) AS UNSIGNED)) ,0) + 1)
                      WHEN 2 THEN MAX(CAST(SUBSTRING(kdkat,2,3) AS UNSIGNED)) + 1
                    END)) AS nilai
               FROM bts_kategori';
        $keys=DB::select($sql);
        foreach ($keys as $key) {
            return $key->nilai;
        }
    }

    public function anyData()
    {
        $kategori=Kategori::select(['id','kdkat','kategori']);

        return Datatables::of($kategori)
            ->addColumn('action', function ($kategori) {
                return '<div align="center">' .
                '<a href="kategori/' . $kategori->id . '/edit" class="btn btn-xs btn-primary btn-circle" ><i class="fa fa-pencil aria-hidden="true"></i></a>' . ' ' .
                \Form::open(array('method'=>'DELETE', 'route' => array('kategori.destroy',"$kategori->id"),'style' => 'display:inline')) .
                '<a href="#" data-toggle="modal" class="btn btn-xs btn-warning btn-circle" type="button" data-target="#konfirmHapus"  data-title="Hapus Kategori" data-message="Anda yakin menghapus ?"><i class="fa fa-remove" aria-hidden="true"></i></a>' .
                \Form::close() .
                '</div>';

            })->make(true);
    }
}
