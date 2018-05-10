<?php

namespace App\Http\Controllers;

use App\Models\Prakiraan;
use Illuminate\Http\Request;
use App\Http\Requests;
use DB;
use Illuminate\Support\Facades\Input;

class PrakiraanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $seltahun=DB::table('bts_konfigurasi')
                ->select(DB::raw('distinct(tahun) as tahun'))
                ->lists('tahun','tahun');
        $selkota=DB::table('bts_kota')->lists('kota','kdkota');
        return view('form.konfigurasi.prakiraan',['seltahun' => $seltahun,'selkota' => $selkota]);
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
    public function store(Requests\PrakiraanRequest $request)
    {
      //
    }

    public function postsave()
    {
        /*$prakiraan = new Prakiraan();
        $prakiraan->tahun = Input::get('tahun');
        $prakiraan->kdkota = Input::get('kdkota');

        $prakiraan->save();*/
        $ptahun = Input::get('tahun');
        $pkota = Input::get('kota');
        $ppotensial = Input::get('potensial');
        $pprediksi = Input::get('prediksi');
        $pasumsi = Input::get('asumsi');
        $ppelanggan = Input::get('pelanggan');
        DB::statement('call saveconfig('. $ptahun .',"' . $pkota . '","'. $ppotensial .'","'. $pprediksi .'","'. $pasumsi .'",' . $ppelanggan . ')');

        return response()->json(['success' => 'true']);
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

    public function getdata($tahun,$kota)
    {
        $valdata=DB::table('bts_konfigurasi')
            ->join('bts_kecamatan','bts_konfigurasi.kdkec','=','bts_kecamatan.kdkec')
            ->join('bts_kategori','bts_kecamatan.kdkat','=','bts_kategori.kdkat')
            ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
            ->select('bts_konfigurasi.tahun','bts_kecamatan.kdkec','bts_kecamatan.kecamatan','bts_kategori.kategori','bts_konfigurasi.jumlah','bts_konfigurasi.kepadatan','bts_konfigurasi.site','bts_konfigurasi.prakiraan')
            ->where('bts_konfigurasi.tahun','=',$tahun)
            ->where('bts_kota.kdkota','=',$kota)
            ->get();

        return response()->json($valdata);
    }

    public function getdataprakiraan($tahun,$kota,$prakiraan)
    {
        $valdata=DB::table('bts_konfigurasi')
                        ->join('bts_kecamatan','bts_konfigurasi.kdkec','=','bts_kecamatan.kdkec')
                        ->join('bts_kategori','bts_kecamatan.kdkat','=','bts_kategori.kdkat')
                        ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
                        ->select('bts_konfigurasi.tahun','bts_kecamatan.kdkec','bts_kecamatan.kecamatan','bts_kategori.kategori','bts_konfigurasi.jumlah','bts_konfigurasi.kepadatan','bts_konfigurasi.site','bts_konfigurasi.prakiraan',DB::raw('ceil((bts_konfigurasi.prakiraan/100) * ' . $prakiraan . ')  as hasil'))
                        ->where('bts_konfigurasi.tahun','=',$tahun)
                        ->where('bts_kota.kdkota','=',$kota)
                        ->get();

        return response()->json($valdata);
    }

    public function getkota($tahun)
    {
        $kota=DB::table('bts_konfigurasi')
                    ->join('bts_kecamatan','bts_konfigurasi.kdkec','=','bts_kecamatan.kdkec')
                    ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
                    ->select(DB::raw('bts_kota.kdkota as kdkota'),DB::raw('bts_kota.kota as kota'))
                    ->where('bts_konfigurasi.tahun','=',$tahun)
                    ->get();

        $options = array();
        foreach ($kota as $val) {
            $options += array($val->kdkota => $val->kota);
        }

        return response()->json($options);
    }

    public function getCekProsen($tahun,$kota)
    {
        $cek=DB::table('bts_konfigurasi')
                ->join('bts_kecamatan','bts_konfigurasi.kdkec','=','bts_kecamatan.kdkec')
                ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
                ->select(DB::raw('sum(bts_konfigurasi.prakiraan) as prosen'))
                ->where('bts_konfigurasi.tahun','=',$tahun)
                ->where('bts_kota.kdkota','=',$kota)
                ->get();

        return response()->json($cek);
    }

    public function getmasterkonfig()
    {
        $master=DB::table('bts_prakiraan')
                ->join('bts_kota','bts_prakiraan.kdkota','=','bts_kota.kdkota')
                ->select(DB::raw('distinct(bts_prakiraan.tahun)'),'bts_kota.kota','bts_prakiraan.potensial','bts_prakiraan.prediksi','bts_prakiraan.asumsi','bts_prakiraan.pelanggan')
                ->get();
        return response()->json($master);
    }

    public function getdetilkonfig()
    {
        $detil=DB::table('bts_prakiraan')
                ->join('bts_kecamatan','bts_prakiraan.kdkec','=','bts_kecamatan.kdkec')
                ->join('bts_kategori','bts_kecamatan.kdkat','=','bts_kategori.kdkat')
                ->select('bts_kecamatan.kecamatan','bts_kategori.kategori','bts_prakiraan.prakiraan',DB::raw('ceil((bts_prakiraan.prakiraan/100) * bts_prakiraan.pelanggan) as pelanggan'))
                ->get();

        return response()->json($detil);
    }
}
