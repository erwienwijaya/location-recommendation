@extends('form.app')

{{-- Head --}}
@section('head')
    @include('ext.generalcss')
    <link href="/admin/dtpicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Konfigurasi Prakiraan</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Study Kelayakan</li>
                        <li><i class="fa fa-file-text-o"></i>Konfigurasi Prakiraan</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Konfigurasi Prakiraan
                        </header>
                        <div class="panel-body">
                            <div style="margin-left: 0px;margin-right: 0px;margin-top: 20px">
                                @include('errors.list')
                            </div>

                            {!! Form::model($konfig, array('route' => array('konfigurasi.update', $konfig->id),'class' => 'form-horizontal', 'method' => 'PUT')) !!}
                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('tahun', 'Tahun',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    <div class='input-group date' id='datetimepicker1' style='text-align:right;width:150px'>
                                        {!! Form::text('tahun', $konfig->tahun, array('class' => 'form-control','placeholder' => 'tahun','style' => 'text-align:center;')) !!}
                                        <span class="input-group-addon">
                                            <span class="fa fa-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('kota', 'Kota / Kabupaten',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::select('kota', $selkota,$konfig->kdkota, array('class' => 'form-control')) !!}
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('kecamatan', 'Kecamatan',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::select('kecamatan', $selkecamatan,$konfig->kdkec, array('class' => 'form-control')) !!}
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('jumlah', 'Jumlah Penduduk',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::text('jumlah', $konfig->jumlah, array('class' => 'form-control','placeholder'=>'Jumlah Penduduk','style' => 'text-align:right;width:150px')) !!}
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('kepadatan', 'Kepadatan (/Km)',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::text('kepadatan', $konfig->kepadatan, array('class' => 'form-control','placeholder'=>'Kepadatan','style' => 'text-align:right;width:150px')) !!}
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('site', 'Site',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::text('site', $konfig->site, array('class' => 'form-control','placeholder'=>'Site','style' => 'text-align:right;width:150px')) !!}
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('prakiraan', 'Prakiraan',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::text('prakiraan', $konfig->prakiraan, array('class' => 'form-control','placeholder'=>'Prakiraan','style' => 'text-align:right;width:150px')) !!}
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('latitude', 'Latitude',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::text('latitude', $konfig->latitude, array('class' => 'form-control','placeholder'=>'Latitude','style' => 'text-align:right;width:150px')) !!}
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('longitude', 'Longitude',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::text('longitude', $konfig->longitude, array('class' => 'form-control','placeholder'=>'Longitude','style' => 'text-align:right;width:150px')) !!}
                                </div>
                            </div>

                            <div align="center">
                                <a href="{{ URL::to('/konfigurasi')}}" type="button" class="btn btn-default btn-lg" data-dismiss="modal"><b><i class="fa fa-chevron-left"></i> Batal</b></a>
                                <button type="submit" class="btn btn-primary btn-lg"><b><i class="fa fa-database"></i> Simpan</b></button>
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
    <script src="/admin/dtpicker/js/moment.min.js"></script>
    <script src="/admin/dtpicker/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#datetimepicker1').datetimepicker({
                viewMode: 'years',
                format: 'YYYY',
                icons: {
                    time: "fa fa-clock-o",
                    date: "fa fa-calendar",
                    up: "fa fa-arrow-up",
                    down: "fa fa-arrow-down",
                    next: "fa fa-chevron-right",
                    previous: "fa fa-chevron-left"
                }
            });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#kota").click(function() {
                $.getJSON("/getkec/" + $("#kota").val(), function(data) {
                    var $kecamatan = $("#kecamatan");
                    $kecamatan.empty();
                    $.each(data, function(index, value) {
                        $kecamatan.append('<option value="' + index +'">' + value + '</option>');
                    });
                });
            });
        });
    </script>


@stop