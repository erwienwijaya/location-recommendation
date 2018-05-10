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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Lokasi BTS</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Data Umum</li>
                        <li><i class="fa fa-file-text-o"></i>Lokasi BTS</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Lokasi BTS
                        </header>
                        <div class="panel-body">
                            <div style="margin-left: 0px;margin-right: 0px;margin-top: 20px">
                                @include('errors.list')
                            </div>

                            {!! Form::model($geos, array('route' => array('geolocation.update', $geos->id),'class' => 'form-horizontal', 'method' => 'PUT')) !!}
                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('kode', 'Kode',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::text('kode', $geos->kdlokasi, array('class' => 'form-control','readonly','placeholder' => 'Kode Otomatis','style' => 'text-align:left;width:150px')) !!}
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('kota', 'Kota / Kabupaten',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::select('kota', $selkota,$geos->kdkota, array('class' => 'form-control')) !!}
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('kecamatan', 'Kecamatan',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::select('kecamatan', $selkec,$geos->kdkec, array('class' => 'form-control')) !!}
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('latitude', 'Latitude',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::text('latitude', $geos->latitude, array('class' => 'form-control','placeholder'=>'Latitude','style' => 'text-align:left;width:150px;text-align:right')) !!}
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-4" align="right">
                                        {!! Form::label('longitude', 'Longitude',array('class' => 'control-label')) !!}
                                    </div>
                                    <div class="col-md-6">
                                        {!! Form::text('longitude', $geos->longitude, array('class' => 'form-control','placeholder'=>'Longitude','style' => 'text-align:left;width:150px;text-align:right')) !!}
                                    </div>
                                </div>

                                <div align="center">
                                    <a href="{{ URL::to('/geolocation')}}" type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-chevron-left"></i> Batal</a>
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