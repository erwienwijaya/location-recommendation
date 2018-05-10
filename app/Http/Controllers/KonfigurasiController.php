<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Konfigurasi;

use App\Http\Requests;
use DB;
use Yajra\Datatables\Datatables;

class KonfigurasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view ('form.konfigurasi.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $selkota=  \App\Models\Kota::lists('kota','kdkota');
        $selkecamatan=  \App\Models\Kecamatan::where('kdkota','K001')
                        ->lists('kecamatan','kdkec');
         return view('form.konfigurasi.create',['selkota' => $selkota,'selkecamatan' => $selkecamatan]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\KonfigurasiRequest $request)
    {
        $konfig=new Konfigurasi();
        $konfig->tahun=$request->tahun;
        $konfig->kdkec=$request->kecamatan;
        $konfig->jumlah=$request->jumlah;
        $konfig->kepadatan=$request->kepadatan;
        $konfig->site=$request->site;
        $konfig -> prakiraan = $request->prakiraan;
        $konfig->latitude=$request->latitude;
        $konfig->longitude=$request->longitude;
        $konfig->save();

        \Session::flash('create', 'Data konfigurasi prakiraan berhasil ditambahkan');
        return redirect('/konfigurasi');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $konfig= DB::table('bts_konfigurasi')
            ->join('bts_kecamatan','bts_konfigurasi.kdkec','=','bts_kecamatan.kdkec')
            ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
            ->join('bts_kategori','bts_kecamatan.kdkat','=','bts_kategori.kdkat')
            ->select('bts_konfigurasi.id','bts_konfigurasi.kdkec',DB::raw('bts_kota.kota as kota'),'bts_kecamatan.kecamatan','bts_kategori.kategori','bts_kecamatan.luas','bts_konfigurasi.latitude','bts_konfigurasi.longitude')
            ->where('bts_konfigurasi.id','=',$id)
            ->first();

        return view('form.konfigurasi.mapper',compact('konfig'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $selkota=  \App\Models\Kota::lists('kota','kdkota');
        $selkecamatan=  \App\Models\Kecamatan::lists('kecamatan','kdkec');

        $konfig=DB::table('bts_konfigurasi')
                    ->join('bts_kecamatan','bts_konfigurasi.kdkec','=','bts_kecamatan.kdkec')
                    ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
                    ->select('bts_konfigurasi.id','bts_konfigurasi.tahun','bts_kota.kdkota','bts_konfigurasi.kdkec','bts_konfigurasi.jumlah','bts_konfigurasi.kepadatan','bts_konfigurasi.site','bts_konfigurasi.prakiraan','bts_konfigurasi.latitude','bts_konfigurasi.longitude')
                    ->where('bts_konfigurasi.id','=',$id)->first();
        return view('form.konfigurasi.edit',['selkota' => $selkota,'selkecamatan' => $selkecamatan,'konfig' => $konfig]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\KonfigurasiRequest $request, $id)
    {
        $konfig=Konfigurasi::find($id);
        $konfig -> tahun = $request->tahun;
        $konfig -> kdkec = $request->kecamatan;
        $konfig -> jumlah = $request->jumlah;
        $konfig -> kepadatan = $request->kepadatan;
        $konfig -> site = $request->site;
        $konfig -> prakiraan = $request->prakiraan;
        $konfig -> latitude = $request->latitude;
        $konfig -> longitude = $request->longitude;
        $konfig -> save();

        \Session::flash('update', 'Data konfigurasi berhasil dirubah');
        return redirect('/konfigurasi');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $konfig=Konfigurasi::find($id);
        $konfig->delete();

        \Session::flash('remove', 'Data konfigurasi berhasil dihapus!');
        return redirect('/konfigurasi');
    }

    public function anyData()
    {
        $konfig=DB::table('bts_konfigurasi')
                 ->join('bts_kecamatan','bts_konfigurasi.kdkec','=','bts_kecamatan.kdkec')   
                 ->join('bts_kategori','bts_kecamatan.kdkat','=','bts_kategori.kdkat')   
                 ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
                 ->select('bts_konfigurasi.id','bts_konfigurasi.tahun','bts_kota.kota','bts_kecamatan.kecamatan','bts_kecamatan.luas','bts_kategori.kategori','bts_konfigurasi.jumlah','bts_konfigurasi.kepadatan','bts_konfigurasi.site','bts_konfigurasi.prakiraan','bts_konfigurasi.latitude','bts_konfigurasi.longitude')
                 ->orderBy('bts_konfigurasi.tahun','asc')->get();

        return response()->json($konfig);
       /* return Datatables::of($konfig)
            ->addColumn('action', function ($konfig) {
                return '<div align="center">' .
                    '<a href="konfigurasi/' . $konfig->id . '/edit" class="btn btn-xs btn-primary btn-circle" ><i class="fa fa-pencil aria-hidden="true"></i></a>' . ' ' .
                    \Form::open(array('method'=>'DELETE', 'route' => array('konfigurasi.destroy',"$konfig->id"),'style' => 'display:inline')) .
                    '<a href="#" data-toggle="modal" class="btn btn-xs btn-warning btn-circle" type="button" data-target="#konfirmHapus"  data-title="Hapus Konfigurasi" data-message="Anda yakin menghapus ?"><i class="fa fa-remove" aria-hidden="true"></i></a>' .
                    \Form::close() .
                    '</div>';

            })->make(true); */
    }


}
