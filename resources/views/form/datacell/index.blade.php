@extends('form.app')

{{-- Head --}}
@section('head')
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    @include('ext.generalcss')
    <link rel="stylesheet" href="/datatables/media/css/jquery.dataTables.min.css">
    <style>
        .modal-dialog-center {
            width: 500px;
            height: 50px;
            position: absolute;
            top: 20%;
            left: 50%;
            margin-top: -25px;
            margin-left: -200px;
            padding: 20px;
        }
    </style>
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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> DATA CELL</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Studi Kelayakan</li>
                        <li><i class="fa fa-file-text-o"></i>Data Cell</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Data Cell (Coverage Cell)
                        </header>
                        <div class="panel-body">
                        <!--    <div style="margin-left: 0px;margin-right: 0px">
                                @include('success.list')
                            </div>

                            {!! Form::open(['class' => 'form-horizontal']) !!}
                            <div class='form-group'>
                                <label for="plhmodel" class="col-sm-2 control-label"><b>Pilih Model</b></label>
                                {!! Form::select('model',$selmodel,null,['class' => 'form-control col-sm-10 model','style' => 'width:100px;']) !!}
                            </div>
                            {!! Form::close() !!}
                            <br>
                            <div class="container-fluid row">
                                <div class="col-xs-6 savekonfig">
                                    <div class="page-header">
                                        <h2><i class="fa fa-cog" aria-hidden="true"></i> Konfigurasi <small>Belum Tersimpan</small></h2>
                                    </div>
                                    <table class="table table-bordered table-hover table-condensed">
                                    <thead><tr><th style="text-align: center;"><b><i class="fa fa-dropbox" aria-hidden="true" /> Deskripsi</b></th>
                                    <th style="text-align: center;"><b><i class="fa fa-safari" aria-hidden="true" /> Nilai</b></th></tr></thead>
                                    <tbody><tr><td>Bandwidth (Mhz)</td>
                                    <td style="text-align: right;">0</td></tr>
                                    <tr><td>QPSK (Mbps)</td>
                                    <td style="text-align: right;">0</td></tr>
                                    <tr><td>16QAM (MBps)</td>
                                    <td style="text-align: right;">0</td></tr>
                                    <tr><td>64QAM (MBps)</td>
                                    <td style="text-align: right;">0</td></tr></tbody>
                                    </table>
                                </div>

                                <div class="col-xs-6 desc" style="width: 50%">

                                </div>
                            </div>
-->
                            <div class="container">
                                <div class="row">
                                    <div class="page-header">
                                        <h2><i class="fa fa-signal" aria-hidden="true"></i> Tabel Data Cell <small>Hasil Kalkulasi</small></h2>
                                    </div>

                                    <table class="table table-bordered table-hover table-condesed" id="tcell">
                                        <thead>
                                        <tr>
                                            <th style="text-align: center">Kode</th>
                                            <th style="text-align: center">Kecamatan</th>
                                            <th style="text-align: center">Luas</th>
                                            <th style="text-align: center">Cakupan Cell (Km)</th>
                                            <th style="text-align: center">Jumlah Cell</th>
                                            <th style="text-align: center">Radius Cell (Km)</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>

                                </div>
                            </div>

                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>

    <div class="modal fade " id="mymodal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-center" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">
                    <h4>Konfigurasi berhasil disimpan</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><b><i class="fa fa-close"></i> Tutup</b></button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
@stop

{{-- js--}}
@section('js')
    @include('ext.generaljs')
    <script src="/datatables/media/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        table =  $('#tcell tbody');
        table.empty();
        $.getJSON('/datacell.getcell',function(data) {
            $.each(data, function(keys,item) {
                table.append("<tr>"
                             + "<td>" + item.kdkec + "</td>"
                             + "<td>" + item.kecamatan + "</td>"
                             + "<td align='right'>" + item.luas + "</td>"
                             + "<td align='right'>" + item.luascell + "</td>"
                             + "<td align='right'>" + item.jmlsel + "</td>"
                             + "<td align='right'>" + item.radius + "</td>"
                             + "</tr>");
            });
        }) ;

        $.getJSON('/datacell.getsavekonfig',function(data) {
           var xhtml;
           if (data.bw == null) {
               xhtml = '<div class="page-header">' +
                       '<h2><i class="fa fa-cog" aria-hidden="true"></i> Konfigurasi <small>Belum Tersimpan</small></h2>' +
                       '</div>' +
                       '<table class="table table-bordered table-hover table-condensed" width="60%">' +
                       '<thead><tr><th style="text-align: center;"><b><i class="fa fa-dropbox" aria-hidden="true" /> Deskripsi</b></th>' +
                       '<th style="text-align: center;"><b><i class="fa fa-safari" aria-hidden="true" /> Nilai</b></th></tr></thead>' +
                       '<tbody><tr><td>Bandwidth (Mhz)</td>' +
                       '<td style="text-align: right;">0</td></tr>' +
                       '<tr><td>QPSK (Mbps)</td>' +
                       '<td style="text-align: right;">0</td></tr>' +
                       '<tr><td>16QAM (MBps)</td>' +
                       '<td style="text-align: right;">0</td></tr>' +
                       '<tr><td>64QAM (MBps)</td>' +
                       '<td style="text-align: right;">0</td></tr></tbody>' +
                       '</table>';
           } else {
               xhtml = '<div class="page-header">' +
                       '<h2><i class="fa fa-cog" aria-hidden="true"></i> Konfigurasi <small>' + data.model + ' Sudah Tersimpan</small></h2>' +
                       '</div>' +
                       '<table class="table table-bordered table-hover table-condensed" width="60%">' +
                       '<thead><tr><th style="text-align: center;"><b><i class="fa fa-dropbox" aria-hidden="true" /> Deskripsi</b></th>' +
                       '<th style="text-align: center;"><b><i class="fa fa-safari" aria-hidden="true" /> Nilai</b></th></tr></thead>' +
                       '<tbody><tr><td>Bandwidth (Mhz)</td>' +
                       '<td style="text-align: right;">' + data.bw + '</td></tr>' +
                       '<tr><td>QPSK (Mbps)</td>' +
                       '<td style="text-align: right;">' + data.qpsk + '</td></tr>' +
                       '<tr><td>16QAM (MBps)</td>' +
                       '<td style="text-align: right;">' + data.qam16 + '</td></tr>' +
                       '<tr><td>64QAM (MBps)</td>' +
                       '<td style="text-align: right;">' + data.qam64 + '</td></tr></tbody>' +
                       '</table>';
           }
            $('.savekonfig').html(xhtml);
        });

        $('.model').click(function() {
            $.getJSON('/datacell.getmodel/' + $('.model').val(), function(data) {

                    var xhtml=  '<div class="page-header">' +
                                '<h2>Model Data <small>Silahkan Pilih</small></h2>' +
                                '</div>' +
                                '<table class="table table-bordered table-hover table-condensed" width="60%">' +
                                '<thead><tr><th style="text-align: center;"><b><i class="fa fa-dropbox" aria-hidden="true" /> Deskripsi</b></th>' +
                                '<th style="text-align: center;"><b><i class="fa fa-safari" aria-hidden="true" /> Nilai</b></th></tr></thead>' +
                                '<tbody><tr><td>Bandwidth (Mhz)</td>' +
                                '<td style="text-align: right;">'+ data.bw +'</td></tr>' +
                                '<tr><td>QPSK (Mbps)</td>' +
                                '<td style="text-align: right;">'+ data.qpsk +'</td></tr>' +
                                '<tr><td>16QAM (MBps)</td>' +
                                '<td style="text-align: right;">'+ data.qam16 +'</td></tr>' +
                                '<tr><td>64QAM (MBps)</td>' +
                                '<td style="text-align: right;">'+ data.qam64 +'</td></tr></tbody>' +
                                '</table>' +
                                '<button class="btn btn-success btn-lg simpan"><b><i class="fa fa-database" aria-hidden="true"></i> Simpan Konfigurasi</b></button>';
                    $('.desc').html(xhtml);


                    $('.simpan').on('click', function() {
                        /*$.post('/datacell.postkonfig', {'model': $('.model').val()}, function (response) {
                         if (response.success) {
                         alert('berhasil disimpan');
                         }
                         }, 'json');*/

                        $.ajax({
                            url : '/datacell.postkonfig',
                            type : 'POST',
                            data : {'model' : $('.model').val()},
                            success : function(response) {
                                $('#mymodal').find('.modal-title').html('<i class="fa fa-check" aria-hidden="true"></i> Berhasil');
                                $('#mymodal').modal();
                            },
                            datatype : 'json'
                        });

                        $('.savekonfig').load("/datacell",function() {
                                $('.savekonfig').empty();
                                var xhtml;
                                $.getJSON('/datacell.getsavekonfig',function(data) {
                                    if (data.bw == null) {
                                        xhtml = '<div class="page-header">' +
                                                '<h2>Konfigurasi <small>Belum Tersimpan</small></h2>' +
                                                '</div>' +
                                                '<table class="table table-bordered table-hover table-condensed" width="60%">' +
                                                '<thead><tr><th style="text-align: center;"><b><i class="fa fa-dropbox" aria-hidden="true" /> Deskripsi</b></th>' +
                                                '<th style="text-align: center;"><b><i class="fa fa-safari" aria-hidden="true" /> Nilai</b></th></tr></thead>' +
                                                '<tbody><tr><td>Bandwidth (Mhz)</td>' +
                                                '<td style="text-align: right;">0</td></tr>' +
                                                '<tr><td>QPSK (Mbps)</td>' +
                                                '<td style="text-align: right;">0</td></tr>' +
                                                '<tr><td>16QAM (MBps)</td>' +
                                                '<td style="text-align: right;">0</td></tr>' +
                                                '<tr><td>64QAM (MBps)</td>' +
                                                '<td style="text-align: right;">0</td></tr></tbody>' +
                                                '</table>';
                                    } else {
                                        xhtml = '<div class="page-header">' +
                                                '<h2>Konfigurasi <small>' + data.model + ' Sudah Tersimpan</small></h2>' +
                                                '</div>' +
                                                '<table class="table table-bordered table-hover table-condensed" width="60%">' +
                                                '<thead><tr><th style="text-align: center;"><b><i class="fa fa-dropbox" aria-hidden="true" /> Deskripsi</b></th>' +
                                                '<th style="text-align: center;"><b><i class="fa fa-safari" aria-hidden="true" /> Nilai</b></th></tr></thead>' +
                                                '<tbody><tr><td>Bandwidth (Mhz)</td>' +
                                                '<td style="text-align: right;">' + data.bw + '</td></tr>' +
                                                '<tr><td>QPSK (Mbps)</td>' +
                                                '<td style="text-align: right;">' + data.qpsk + '</td></tr>' +
                                                '<tr><td>16QAM (MBps)</td>' +
                                                '<td style="text-align: right;">' + data.qam16 + '</td></tr>' +
                                                '<tr><td>64QAM (MBps)</td>' +
                                                '<td style="text-align: right;">' + data.qam64 + '</td></tr></tbody>' +
                                                '</table>';
                                    }
                                    $('.savekonfig').html(xhtml);
                                });

                        });

                    });

            });
        });

    </script>
@stop