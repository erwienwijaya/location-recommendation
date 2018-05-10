@extends('form.app')

{{-- Head --}}
@section('head')
    @include('ext.generalcss')

@stop

{{-- header --}}
@section('header')
    @include('ext.header')
@stop

{{-- aside --}}
@section('aside')
    @include('ext.aside')
@stop

{{-- main --}}
@section('main')
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Kecamatan</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Data Umum</li>
                        <li><i class="fa fa-file-text-o"></i>Kecamatan</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Kecamatan
                        </header>
                        <div class="panel-body">
                            <div style="margin-left: 0px;margin-right: 0px;margin-top: 20px">
                                @include('errors.list')
                            </div>

                            {!! Form::model($kecs, array('route' => array('kecamatan.update', $kecs->id),'class' => 'form-horizontal', 'method' => 'PUT')) !!}
                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('kode', 'Kode',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::text('kode', $kecs->kdkec, array('class' => 'form-control','readonly','placeholder' => 'Kode Otomatis','style' => 'text-align:left;width:150px')) !!}
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('kota', 'Kota / Kabupaten',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::select('kota', $selkota,$kecs->kdkota, array('class' => 'form-control')) !!}
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('kecamatan', 'Kecamatan',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::text('kecamatan', $kecs->kecamatan, array('class' => 'form-control','placeholder'=>'Kecamatan')) !!}
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('kategori', 'Kategori',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::select('kategori', $selkategori,$kecs->kdkat, array('class' => 'form-control')) !!}
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('luas', 'Luas',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::text('luas', $kecs->luas, array('class' => 'form-control','placeholder'=>'Luas','style' => 'text-align:right;width:150px')) !!}
                                    </div>
                                </div>

                                <div align="center">
                                    <a href="{{ URL::to('/kecamatan')}}" type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-chevron-left"></i> Batal</a>
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-database"></i> Simpan</button>
                                </div>
                            {!! Form::close()!!}

                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
@stop

{{-- js--}}
@section('js')
    @include('ext.generaljs')
@stop