@extends('form.app')

{{-- Head --}}
@section('head')
    <meta name="csrf-token" content="{{ csrf_token() }}" />
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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Algoritma Genetika</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Algoritma Genetika</li>
                        <li><i class="fa fa-file-text-o"></i>Setting</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Setting GA
                        </header>
                        <div class="panel-body">
                            <div id="pesan"></div>
                            <table class="table table-bordered table-hover" cellspacing="0" id="tsetting" align="center" style="width: 70%">
                                <thead>
                                <tr>
                                    <th>Variabel</th>
                                    <th>Value</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Max. Generasi</td>
                                        <td style="text-align: right" id="mgen">{{  $setting->maxgen }}</td>
                                    </tr>
                                    <tr>
                                        <td>Probabilitas Crossover</td>
                                        <td style="text-align: right" id="pc">{{ $setting->pc }}</td>
                                    </tr>
                                    <tr>
                                        <td>Probabilitas Mutasi</td>
                                        <td style="text-align: right" id="pm">{{ $setting->pm  }}</td>
                                    </tr>
                                    <tr>
                                        <td>Populasi Size</td>
                                        <td style="text-align: right" id="popsize">{{ $setting->popsize  }}</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div align="center">
                                <button class="btn btn-lg btn-success" id="simpan" style="font-weight: bold"><i class="fa fa-save" aria-hidden="true"></i> Simpan Nilai</button>
                                <button class="btn btn-lg btn-primary" id="ubah" style="font-weight: bold"><i class="fa fa-edit" aria-hidden="true"></i> Rubah Nilai</button>
                                <button class="btn btn-lg btn-warning" style="font-weight: bold;" id="btnproses"><i class='fa fa-database' aria-hidden="true"></i> Generate GA</button>
                            </div>
                            <hr>
                            <div align="center">


                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
@stop

@section('js')
    @include('ext.generaljs')
    <script src="/js/progress.js"></script>

    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function() {
            $.getJSON('/setting.data',function(data) {
                $('#mgen').html(data["maxgen"]);
                $('#pc').html(data["pc"]);
                $('#pm').html(data["pm"]);
                $('#popsize').html(data["popsize"]);
            });
            $('#simpan').hide();

            $('#ubah').click(function() {
                $.getJSON('/setting.data',function(data) {
                    $('#mgen').html('<input type="text" class="form-control" style="text-align:right;" id="imgen" value=' +  data["maxgen"] + '>');
                    $('#pc').html('<input type="text" class="form-control" style="text-align:right;" id="ipc" value=' +  data["pc"] +' >');
                    $('#pm').html('<input type="text" class="form-control" style="text-align:right;" id="ipm" value=' +  data["pm"] +' >');
                    $('#popsize').html('<input type="text" class="form-control" style="text-align:right;" id="ipopsize" value=' +  data["popsize"] +' >');
                });

                $('#btnproses').hide();
                $('#ubah').hide();
                $('#simpan').show();
            });

            $('#simpan').click(function() {
                $.post('/setting.simpan',{'mgen' : $('#imgen').val(),'pc' : $('#ipc').val(),'pm' : $('#ipm').val(),'popsize' : $('#ipopsize').val() }, function(response) {
                    if (response.success)
                    {
                        $.getJSON('/setting.data',function(data) {
                            $('#mgen').html(data["maxgen"]);
                            $('#pc').html(data["pc"]);
                            $('#pm').html(data["pm"]);
                            $('#popsize').html(data["popsize"]);
                        });

                        $('#btnproses').show();
                        $('#ubah').show();
                        $('#simpan').hide();
                        $('#pesan').html('<div class="alert alert-info" role="alert"><i class="fa fa-check-circle-o" aria-hidden="true"></i> Setting telah dirubah <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button></div>');
                    }
                });

            });

            $('#btnproses').click( function() {
                waitingDialog.show('Loading Create GA');

                $.ajax({
                    url : '/populasi.generate',
                    type : 'POST',
                    data : {},
                    success : function(response) {
                        $('#pesan').html('<div class="alert alert-success" role="alert"><i class="fa fa-check"></i><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> Populasi tiap kecamatan berhasil dibuat</div>');
                    },
                    datatype : 'json'
                });
                setTimeout(function () {waitingDialog.hide();}, ((parseInt($('#popsize').text()) * parseInt($('#mgen').text())) * 1000) + 3000);
            });
        });
    </script>
@stop

