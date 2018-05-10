<?php

namespace App\Http\Controllers;

use App\Models\Kota;
use App\Models\Okumura;
use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use Symfony\Component\HttpFoundation\IpUtils;
use DB;

class OkumuraController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view ('form.okumura.index');
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

    public function getOkumura()
    {
        $okumura = Okumura::find(1);
        return response()->json($okumura);
    }

    public function postOkumura()
    {
        $okumura = Okumura::find(1);
        $okumura -> fuplink = Input::get('fuplink');
        $okumura -> fdownlink = Input::get('fdownlink');
        $okumura -> fdownlink = Input::get('fdownlink');
        $okumura -> hms = Input::get('hms');
        $okumura -> hbsurban = Input::get('hbsurban');
        $okumura -> hbssurban = Input::get('hbssurban');
        $okumura -> hbsrural = Input::get('hbsrural');
        $okumura -> auplink = Input::get('auplink');
        $okumura -> adownlink = Input::get('adownlink');
        $okumura -> maplu = Input::get('maplu');
        $okumura -> mapld = Input::get('mapld');
        $okumura -> cm = Input::get('cm');
        $okumura -> thurban = Input::get('thurban');
        $okumura -> thsurban = Input::get('thsurban');
        $okumura -> thrural = Input::get('thrural');
        $okumura -> overlap = Input::get('overlap');
        $okumura -> blindspot = Input::get('blindspot');
        $okumura -> save();

        return response()->json(['success' => 'true']);
    }
}
