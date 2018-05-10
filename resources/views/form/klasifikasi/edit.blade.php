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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Klasifikasi LTE</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Data Umum</li>
                        <li><i class="fa fa-file-text-o"></i>Klasifikasi LTE</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Klasifikasi LTE
                        </header>
                        <div class="panel-body">
                            <div style="margin-left: 0px;margin-right: 0px;margin-top: 20px">
                                @include('errors.list')
                            </div>

                            <div class="container-fluid row">
                                {!! Form::model($klasifikasi, array('route' => array('klasifikasi.update', $klasifikasi->id),'class' => 'form-horizontal', 'method' => 'PUT')) !!}
                                <div class="col-xs-6">
                                    <div class="form-group">
                                        {!! Form::label('kategori', 'Kategori',array('class' => 'col-sm-2 control-label')) !!}
                                        <div class="col-sm-6">
                                            {!! Form::select('kategori',['bw' => 'Bandwidth','p' => 'Penetrasi','bhca' => 'BHCA','d' => 'Call Duration'],$klasifikasi->kategori, array('class' => 'form-control')) !!}
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        {!! Form::label('layanan', 'Layanan',array('class' => 'col-sm-2  control-label')) !!}
                                        <div class="col-sm-6 layanan">
                                            {!! Form::select('layanan',['uplink' => 'Uplink','downlink' => 'Downlink','urban' => 'Urban','suburban' => 'Suburban','rural' => 'Rural'],$klasifikasi->layanan, array('class' => 'form-control')) !!}
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        {!! Form::label('voice', 'Voice',array('class' => 'col-sm-2  control-label')) !!}
                                        <div class="col-sm-6">
                                            {!! Form::text('voice', $klasifikasi->voice, array('class' => 'form-control','placeholder'=>'0','style' => 'text-align:right;width:80px')) !!}
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        {!! Form::label('video', 'Video',array('class' => 'col-sm-2  control-label')) !!}
                                        <div class="col-sm-6">
                                            {!! Form::text('video', $klasifikasi->video, array('class' => 'form-control','placeholder'=>'0','style' => 'text-align:right;width:80px')) !!}
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xs-6">
                                    <div class="form-group">
                                        {!! Form::label('streaming', 'Streaming',array('class' => 'col-sm-2 control-label')) !!}
                                        <div class="col-sm-8">
                                            {!! Form::text('streaming', $klasifikasi->streaming, array('class' => 'form-control','placeholder'=>'0','style' => 'text-align:right;width:80px')) !!}
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        {!! Form::label('data', 'Data',array('class' => 'col-sm-2 control-label')) !!}
                                        <div class="col-sm-8">
                                            {!! Form::text('data', $klasifikasi->data, array('class' => 'form-control','placeholder'=>'0','style' => 'text-align:right;width:80px')) !!}
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        {!! Form::label('multimedia', 'Multimedia',array('class' => 'col-sm-2 control-label')) !!}
                                        <div class="col-sm-8">
                                            {!! Form::text('multimedia', $klasifikasi->multimedia, array('class' => 'form-control','placeholder'=>'0','style' => 'text-align:right;width:80px')) !!}
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row" align="center">
                                <a href="{{ URL::to('/klasifikasi')}}" type="button" class="btn btn-default btn-lg" data-dismiss="modal"><b><i class="fa fa-chevron-left" aria-hidden="true"></i> Batal</b></a>
                                <button type="submit" class="btn btn-primary btn-lg"><b><i class="fa fa-database" aria-hidden="true"></i> Simpan</b></button>
                            </div>
                            {!! Form::close() !!}
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

    <script type="text/javascript">
        $(document).ready(function() {
            $("#kategori").on('click change',function () {
                if ($("#kategori").val()== 'bw') {
                    $('.layanan').html('{!! Form::select('layanan',['uplink' => 'Uplink','downlink' => 'Downlink'],Request::old('layanan'), array('class' => 'form-control')) !!}');
                }else if ($("#kategori").val()== 'p' || $("#kategori").val()== 'bhca' || $("#kategori").val()== 'd' ) {
                    $('.layanan').html('{!! Form::select('layanan',['urban' => 'Urban','suburban' => 'Suburban','rural' => 'Rural'],Request::old('layanan'), array('class' => 'form-control')) !!}');
                }
            });
        });
    </script>
@stop