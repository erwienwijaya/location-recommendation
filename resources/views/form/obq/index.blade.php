@extends('form.app')

{{-- Head --}}
@section('head')
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    @include('ext.generalcss')
    <link rel="stylesheet" href="/datatables/media/css/jquery.dataTables.min.css">

    <style>
        #listobq .modal-dialog  {width:900px;}
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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Traffic Offered Bit Quantity</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Studi Kelayakan</li>
                        <li><i class="fa fa-file-text-o"></i>Traffic OBQ</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Traffic OBQ
                        </header>
                        <div class="panel-body">
                            <div style="margin-left: 0px;margin-right: 0px">
                                @include('success.list')
                            </div>
                            <table class="display nowrap cell-border" cellspacing="0" width="100%" id="tobq">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Kecamatan</th>
                                    <th>Luas</th>
                                    <th>Kategori</th>
                                    <th>Prediksi</th>
                                    <th>Jumlah Pelanggan</th>
                                    <th>Kepadatan</th>
                                    <th>kdkec</th>
                                    <th>Konfig</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>

                            <div align="left">
                                <i>(Klik pada tabel untuk mendapatkan detil informasi OBQ)</i>
                            </div>
                        </div>
                     </section>
                </div>
            </div>
        </section>
    </section>

    <div class="modal fade" id="listobq" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Modal title</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="valobq" />
                    <div class="pesan"></div>
                    <table class="table table-bordered table-hover table-condensed" id="tdetil">
                        <thead>
                        <tr>
                            <th>Kategori</th>
                            <th>Voice</th>
                            <th>Video</th>
                            <th>Streaming</th>
                            <th>Data</th>
                            <th>Multimedia</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr><td colspan="6" style="text-align: center">Data Kosong <b>klik tabel diatas</b></td></tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success" id="simpan"><b><i class="fa fa-database"></i> Simpan</b></button>
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

    <script  type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        var table = $('#tobq').DataTable({
            "ajax":  {
                "url": '/trafficobq.data',
                "dataSrc": ""
            },
            "columns": [
                { "data": "id" },
                { "data": "kecamatan", "className" : "dt-body-left dt-head-center" },
                { "data": "luas", "className" : "dt-body-right dt-head-center" },
                { "data": "kategori", "className" : "dt-body-left dt-head-center" },
                { "data": "prediksi", "className" : "dt-body-center dt-head-center" },
                { "data": "jumlah", "className" : "dt-body-right dt-head-center" },
                { "data": "kepadatan", "className" : "dt-body-right dt-head-center" },
                { "data": "kdkec", "className" : "dt-body-left dt-head-center" },
                { "data": "nomor", "className" : "dt-body-center dt-head-center","render" : function ( data) {
                        if (data === 0) {
                            return '<i class="fa fa-toggle-off" aria-hidden="true"/>';
                        }
                    return '<i class="fa fa-toggle-on" aria-hidden="true"/>';
                    }
                }
            ],
            "columnDefs": [
                {
                    "targets": [0,7] ,
                    "visible": false,
                    "searchable": false
                }
            ],
            paging: true,
            searching: true,
            scrollX: true,
            stateSave: true,
            stateSaveCallback: function(settings,data) {
                localStorage.setItem( 'DataTables_' + settings.sInstance, JSON.stringify(data) )
            },
            stateLoadCallback: function(settings) {
                return JSON.parse( localStorage.getItem( 'DataTables_' + settings.sInstance ) )
            }
        });


        $('#tobq tbody').on( 'click', 'tr', function () {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');

            var idx=table.row('.selected').index();
            var nomor = table.cell(idx,0).data();
            var kecamatan = table.cell(idx,1).data();
            var prediksi = table.cell(idx,4).data();
            var kategori = table.cell(idx,3).data();
            var kepadatan=table.cell(idx,6).data();
            var kdkec=table.cell(idx,7).data();

            $('.modal-title').html('<i class="fa fa-tasks" aria-hidden="true"></i> Detil Informasi : <b>' + kecamatan + '</b>');
            $('.pesan').empty();
            $('#tdetil tbody').empty();

            $.getJSON('/trafficobq.detil/' + kategori,
                    function (data) {
                        var voice=1;
                        var video=1;
                        var streaming=1;
                        var datax=1;
                        var multimedia=1;
                        $.each(data, function(i, item) {
                            $('#tdetil').append(
                                    "<tr>"
                                    +"<td align='left'>"+ item.kategori +"</td>"
                                    +"<td align='right'>"+ item.voice +"</td>"
                                    +"<td align='right'>"+ item.video +"</td>"
                                    +"<td align='right'>"+ item.streaming +"</td>"
                                    +"<td align='right'>"+ item.data +"</td>"
                                    +"<td align='right'>"+ item.multimedia +"</td>"
                                    +"</tr>" );

                            voice = parseFloat(item.voice,2) * voice ;
                            video = parseFloat(item.video,2) * video ;
                            streaming = parseFloat(item.streaming,2) * streaming ;
                            datax = parseFloat(item.data,2) * datax ;
                            multimedia = parseFloat(item.multimedia,2) * multimedia;
                        });


                        var thtml='<tr><td><b>OBQ (bps/Km<sup>2</sup>)</b></td><td align="right">'+ parseFloat(voice,2) * kepadatan +'</td><td align="right">'+ parseFloat(video,2) * kepadatan +'</td><td align="right">'+ parseFloat(streaming,2) * kepadatan +'</td><td align="right">'+ parseFloat(datax,2) * kepadatan +'</td><td align="right">'+ parseFloat(multimedia,2) * kepadatan +'</td></tr>' +
                                  '<tr><td><b>OBQ (Kbps/Km<sup>2</sup>)</b></td><td align="right">' + (parseFloat(voice,2) * kepadatan) / 1000000 + '</td><td align="right">' + (parseFloat(video,2) * kepadatan) / 1000000 + '</td><td align="right">' + (parseFloat(streaming,2) * kepadatan) / 1000000 + '</td><td align="right">' + (parseFloat(datax,2) * kepadatan) / 1000000 + '</td><td align="right">' + (parseFloat(multimedia,2) * kepadatan) / 1000000 + '</td></tr>' +
                                  '<tr><td><b>Total OBQ (Kbps/Km<sup>2</sup>)</b></td><td colspan="5" align="right">' + Math.ceil(((parseFloat(voice,2) * kepadatan) / 1000000) + ((parseFloat(video,2) * kepadatan) / 1000000) + ((parseFloat(streaming,2) * kepadatan) / 1000000) + ((parseFloat(datax,2) * kepadatan) / 1000000) + ((parseFloat(multimedia,2) * kepadatan) / 1000000)) + '</td></tr>';
                        $('#tdetil').append(thtml);
                        $('.modal-body').find('#valobq').val(Math.ceil(((parseFloat(voice,2) * kepadatan) / 1000000) + ((parseFloat(video,2) * kepadatan) / 1000000) + ((parseFloat(streaming,2) * kepadatan) / 1000000) + ((parseFloat(datax,2) * kepadatan) / 1000000) + ((parseFloat(multimedia,2) * kepadatan) / 1000000)));
            });

            $('#listobq').modal();

            $('#simpan').click(function() {
                $.post('/trafficobq.save',{'nomor':nomor,'kdkec':kdkec,'prediksi':prediksi,'kepadatan':kepadatan,'obq':$('.modal-body').find('#valobq').val() },function(response) {
                     if (response.simpan) {
                         $('.pesan').html('<div class="alert alert-success" role="alert"><i class="fa fa-check"></i> Konfigurasi berhasil disimpan</div>');
                     } else if (response.ubah) {
                         $('.pesan').html('<div class="alert alert-success" role="alert"><i class="fa fa-check"></i> Konfigurasi berhasil dirubah</div>');
                     }
                });

             location.reload();

            });

        } );

    </script>
@stop