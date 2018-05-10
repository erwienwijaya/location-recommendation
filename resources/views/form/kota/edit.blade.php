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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Kota</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Data Umum</li>
                        <li><i class="fa fa-file-text-o"></i>Kota</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Kota
                        </header>
                        <div class="panel-body">
                            <div style="margin-left: 0px;margin-right: 0px;margin-top: 20px">
                                @include('errors.list')
                            </div>

                            {!! Form::model($kotas, array('route' => array('kota.update', $kotas->id),'class' => 'form-horizontal', 'method' => 'PUT')) !!}
                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('kode', 'Kode',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::text('kode', $kotas->kdkota, array('class' => 'form-control','readonly','placeholder' => 'Kode Otomatis','style' => 'text-align:left;width:150px')) !!}
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('kota', 'Kota / Kabupaten',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::text('kota', $kotas->kota, array('class' => 'form-control','placeholder'=>'Kota / Kabupaten')) !!}
                                    </div>
                                </div>

                                <div align="center">
                                    <a href="{{ URL::to('/kota')}}" type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-chevron-left"></i> Batal</a>
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