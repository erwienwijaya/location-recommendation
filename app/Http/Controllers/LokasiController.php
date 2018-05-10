<?php

namespace App\Http\Controllers;

use App\Models\Kecamatan;
use App\Models\Kota;
use App\Models\Lokasi;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Illuminate\Http\Response;
use Yajra\Datatables\Datatables;

class LokasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $selkota=Kota::lists('kota','kdkota');
        $selkec=Kecamatan::where('kdkota','K001')
                    ->lists('kecamatan','kdkec');

        return view ('form.geolocation.index',['selkota' => $selkota,'selkec' => $selkec]);

    }

    /**
     * Show result from filter between kota and kecamatan
     */

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $selkota=Kota::lists('kota','kdkota');
        $selkec=Kecamatan::where('kdkota','K001')
                ->lists('kecamatan','kdkec');

        return view('form.geolocation.create',['selkota' => $selkota,'selkec' => $selkec]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\LokasiRequest $request)
    {
        $geos = new Lokasi();
        $geos->kdlokasi = $this->otocode($request->kecamatan);
        $geos->kdkota = $request->kota;
        $geos->kdkec = $request->kecamatan;
        $geos->latitude = $request->latitude;
        $geos->longitude = $request->longitude;
        $geos->save();

        \Session::flash('create', 'Data lokasi BTS berhasil ditambahkan');
        return redirect('/geolocation');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $geos= DB::table('bts_lokasi')
            ->join('bts_kecamatan','bts_lokasi.kdkec','=','bts_kecamatan.kdkec')
            ->join('bts_kota','bts_lokasi.kdkota','=','bts_kota.kdkota')
            ->join('bts_kategori','bts_kecamatan.kdkat','=','bts_kategori.kdkat')
            ->select('bts_lokasi.id','bts_lokasi.kdlokasi',DB::raw('bts_kota.kota as kota'),'bts_kecamatan.kecamatan','bts_kategori.kategori','bts_kecamatan.luas','bts_lokasi.latitude','bts_lokasi.longitude')
            ->where('bts_lokasi.id','=',$id)
            ->first();

        return view('form.geolocation.map',compact('geos'));
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
        $selkec=Kecamatan::where('kdkota','K001')
                 ->lists('kecamatan','kdkec');

        $geos=Lokasi::find($id);
        return view ('form.geolocation.edit',['geos' => $geos,'selkota' => $selkota,'selkec' => $selkec]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\LokasiRequest $request, $id)
    {
        $geos=Lokasi::find($id);
        $geos->kdkota = $request->kota;
        $geos->kdkec = $request->kecamatan;
        $geos->latitude = $request->latitude;
        $geos->longitude = $request->longitude;
        $geos->save();

        \Session::flash('update', 'Data lokasi BTS berhasil dirubah');
        return redirect('/geolocation');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $geos=Lokasi::find($id);
        $geos->delete();

        \Session::flash('remove', 'Data lokasi BTS berhasil dihapus!');
        return redirect('/geolocation');
    }


    public function getkecamatan($id)
    {
        $kecamatan = Kecamatan::where('kdkota', '=', $id)->get();
        $options = array();

        foreach ($kecamatan as $kec) {
            $options += array($kec->kdkec => $kec->kecamatan);
        }

        return response()->json($options);
    }

    public function otocode($id)
    {
        //generate automatic key
        $sql = 'SELECT TRIM(CONCAT(CONCAT("' . $id . '","-"),CASE LENGTH(IFNULL(MAX(CAST(SUBSTRING(kdlokasi,6,3) AS UNSIGNED)) ,0) + 1)
                      WHEN 1 THEN CONCAT("00",IFNULL(MAX(CAST(SUBSTRING(kdlokasi,6,3) AS UNSIGNED)) ,0) + 1)                                
                      WHEN 2 THEN CONCAT("0",IFNULL(MAX(CAST(SUBSTRING(kdlokasi,6,3) AS UNSIGNED)) ,0) + 1)
                      WHEN 3 THEN MAX(CAST(SUBSTRING(kdlokasi,6,3) AS UNSIGNED)) + 1
                    END)) AS nilai
               FROM bts_lokasi';
        $keys = DB::select($sql);
        foreach ($keys as $key) {
            return $key->nilai;
        }
    }

    public function anyData()
    {
        $lokasi=DB::table('bts_lokasi')
            ->join('bts_kecamatan','bts_lokasi.kdkec','=','bts_kecamatan.kdkec')
            ->join('bts_kota','bts_lokasi.kdkota','=','bts_kota.kdkota')
            ->join('bts_kategori','bts_kecamatan.kdkat','=','bts_kategori.kdkat')
            ->select('bts_lokasi.id','bts_lokasi.kdlokasi','bts_kota.kota','bts_kecamatan.kecamatan','bts_kategori.kategori','bts_kecamatan.luas','bts_lokasi.latitude','bts_lokasi.longitude')
            ->get();

        return response()->json($lokasi);
    }

}
