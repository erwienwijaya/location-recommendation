<?php

namespace App\Http\Controllers;

use App\Models\Klasifikasi;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Illuminate\Support\Facades\Input;

class KlasifikasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('form.klasifikasi.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('form.klasifikasi.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\KlasifikasiRequest $request)
    {
        $klasifikasi=new Klasifikasi();
        $klasifikasi->kategori = $request->kategori;
        $klasifikasi->layanan = $request->layanan;
        $klasifikasi->voice = $request->voice;
        $klasifikasi->video = $request->video;
        $klasifikasi->streaming = $request->streaming;
        $klasifikasi->data = $request->data;
        $klasifikasi->multimedia = $request->multimedia;
        $klasifikasi->save();

        \Session::flash('create', 'Data klasifikasi LTE berhasil ditambahkan');
        return redirect('/klasifikasi');
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
        $klasifikasi=Klasifikasi::find($id);
        return view('form.klasifikasi.edit',['klasifikasi' => $klasifikasi]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\KlasifikasiRequest $request, $id)
    {
        $klasifikasi=Klasifikasi::find($id);
        $klasifikasi->kategori = $request->kategori;
        $klasifikasi->layanan = $request->layanan;
        $klasifikasi->voice = $request->voice;
        $klasifikasi->video = $request->video;
        $klasifikasi->streaming = $request->streaming;
        $klasifikasi->data = $request->data;
        $klasifikasi->multimedia = $request->multimedia;
        $klasifikasi->save();

        \Session::flash('update', 'Data klasifikasi LTE berhasil dirubah');
        return redirect('/klasifikasi');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $klasifikasi = Klasifikasi::find($id);
        $klasifikasi->delete();

        \Session::flash('remove', 'Data klasifikasi berhasil dihapus!');
        return redirect('/klasifikasi');
    }

    public function getAnydata()
    {
       $data=Klasifikasi::select('id',DB::raw('(case kategori when "bw" then "Bandwith" when "p" then "Penetrasi" when "bhca" then "BHCA" when "d" then "Call Duration" end) as kategori'),'layanan','layanan','voice','video','streaming','data','multimedia')
                ->get();
       return response()->json($data);
    }

    public function postSave()
    {
        $klasifikasi=new Klasifikasi();
        $klasifikasi->kategori = Input::get('kategori');
        $klasifikasi->layanan = Input::get('layanan');
        $klasifikasi->voice = Input::get('voice');
        $klasifikasi->video = Input::get('video');
        $klasifikasi->streaming = Input::get('streaming');
        $klasifikasi->data = Input::get('data');
        $klasifikasi->multimedia = Input::get('multimedia');
        $klasifikasi->save();

        return response()->json(['success' => 'true']);
    }

}
