<?php

namespace App\Http\Controllers;

use App\Models\OBQ;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Illuminate\Support\Facades\Input;

class TrafficController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('form.obq.index');
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

    public function getAnyData()
    {
        $traffic=DB::table('bts_prakiraan')
                    ->join('bts_kecamatan','bts_prakiraan.kdkec','=','bts_kecamatan.kdkec')
                    ->join('bts_kota','bts_kecamatan.kdkota','=','bts_kota.kdkota')
                    ->join('bts_kategori','bts_kecamatan.kdkat','=','bts_kategori.kdkat')
                    ->leftJoin('bts_obq','bts_prakiraan.id','=','bts_obq.nomor')
                    ->select('bts_prakiraan.id','bts_kecamatan.kecamatan','bts_kecamatan.luas','bts_kategori.kategori',DB::raw('(bts_prakiraan.prediksi + bts_prakiraan.tahun) as prediksi'),DB::raw('ceil((bts_prakiraan.prakiraan/100) * bts_prakiraan.pelanggan) as jumlah'),DB::raw('ceil(((bts_prakiraan.prakiraan/100) * bts_prakiraan.pelanggan) / bts_kecamatan.luas) as kepadatan'),'bts_prakiraan.kdkec',DB::raw('IFNULL(bts_obq.nomor,0) as nomor'))
                    ->get();

        return response()->json($traffic);
    }

    public function getDetail($kategori)
    {
        $data=DB::table('bts_klasifikasi')
                    ->select(DB::raw('(case kategori when "bw" then "Bandwidth" when "p" then "Penetrasi" when "bhca" then "BHCA" when "d" then "Call Duration" end) as kategori'),'voice','video','streaming','data','multimedia')
                    ->where('layanan','=','downlink')
                    ->orWhere('layanan',$kategori)
                    ->get();

        return response()->json($data);

    }

    public function postSave()
    {
        $cari=OBQ::where('nomor','=',Input::get('nomor'))->first();

        if (empty($cari)) {
            $obq = new OBQ();
            $obq->nomor = Input::get('nomor');
            $obq->kdkec = Input::get('kdkec');
            $obq->prediksi = Input::get('prediksi');
            $obq->kepadatan = Input::get('kepadatan');
            $obq->obq = Input::get('obq');
            $obq->save();

            return response()->json(['simpan' => 'true']);
        } else {
            $obq = OBQ::where('nomor',Input::get('nomor'))->first();
            $obq->nomor = Input::get('nomor');
            $obq->kdkec = Input::get('kdkec');
            $obq->prediksi = Input::get('prediksi');
            $obq->kepadatan = Input::get('kepadatan');
            $obq->obq = Input::get('obq');
            $obq->save();

            return response()->json(['ubah' => 'true']);
        }




    }
}
