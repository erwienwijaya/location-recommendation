@extends('form.app')

{{-- Head --}}
@section('head')
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    @include('ext.generalcss')
    <link rel="stylesheet" href="/datatables/media/css/jquery.dataTables.min.css">

    <style>
        div.dataTables_wrapper {
            width : 100%;
            margin: 0 auto;
        }

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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Klasifikasi LTE</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Studi Kelayakan</li>
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
                            <div style="margin-left: 0px;margin-right: 0px">
                                @include('success.list')
                            </div>

                            <div align="right" class="buttonx-control">
                                <a href="#" class="btn btn-primary" id="tambah"><i class="fa fa-plus" aria-hidden="true"></i> Tambah</a>
                                <a href="#" id="edit" class="btn btn-warning" ><i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                                {!! Form::open(array('method'=>'DELETE', 'url' => array('#'),'id' =>'frmhapus','style' => 'display:inline')) !!}
                                <a href="#" data-toggle="modal" id="hapus" class="btn btn-danger" type="button" data-target="#konfirmHapus"  data-title="Hapus Konfigurasi" data-message="Anda yakin menghapus ?"><i class="fa fa-remove" aria-hidden="true"></i> Hapus</a>
                                {!! Form::close() !!}

                            </div>

                            <div class="formx-control">
                            </div>

                            <table class="display nowrap" cellspacing="0" width="100%" id="tklasifikasi">
                                <thead>
                                <tr>
                                    <th>Kategori</th>
                                    <th>Layanan</th>
                                    <th>Voice</th>
                                    <th>Video</th>
                                    <th>Streaming</th>
                                    <th>Data</th>
                                    <th>Multimedia</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>

                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
    <div class="modal fade" id="mymodal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-center" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">
                    <div class="body"></div>
                </div>
                <div class="modal-footer">
                    <button type="button"  class="btn btn-primary" id="simpan"><i class="fa fa-save" aria-hidden="true"></i> Simpan</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
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
    </script>

    <script>
        var table = $('#tklasifikasi').DataTable({
            "ajax":  {
                "url": '/klasifikasi.data',
                "dataSrc": ""
            },
            "columns": [
                { "data": "kategori" },
                { "data": "layanan" },
                { "data": "voice" },
                { "data": "video" },
                { "data": "streaming" },
                { "data": "data" },
                { "data": "multimedia" }
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

        $("#tambah").on('click',function () {
            $('.buttonx-control').empty();
            /*$('#mymodal').find('.modal-title').html('<i class="fa fa-plus" aria-hidden="true"></i> Tambah Data');*/

            var xhtml= '<div class="panel panel-default"><div class="panel-body">' +
                       '<div class="page-header">' +
                       '<h4><b>Tambah Data</b></h4>' +
                       '</div>' +
                       '<hr>' +
                       '<div class="row">' +
                       '<div class="col-xs-6">' +
                       '{!! Form::open(array("class" => "form-horizontal")) !!}' +
                       '<div class="form-group">' +
                       '{!! Form::label('kategori', 'Kategori',array('class' => 'col-sm-2 control-label')) !!}' +
                       '<div class="col-sm-10">' +
                       '{!! Form::select('kategori',['bw' => 'Bandwidth','p' => 'Penetrasi','bhca' => 'BHCA','d' => 'Call Duration'],Request::old('kategori'), array('class' => 'form-control')) !!}' +
                       '</div>' +
                       '</div>' +
                       '<div class="form-group">' +
                       '{!! Form::label('layanan', 'Layanan',array('class' => 'col-sm-2  control-label')) !!}' +
                       '<div class="col-sm-10 layanan">' +
                       '{!! Form::select('layanan',['uplink' => 'Uplink','downlink' => 'Downlink'],Request::old('layanan'), array('class' => 'form-control')) !!}' +
                       '</div>' +
                       '</div>' +
                       '<div class="form-group">' +
                       '{!! Form::label('voice', 'Voice',array('class' => 'col-sm-2  control-label')) !!}' +
                       '<div class="col-sm-10">' +
                       '{!! Form::text('voice', Request::old('voice'), array('class' => 'form-control','placeholder'=>'0','style' => 'text-align:right;width:80px')) !!}' +
                       '</div>' +
                       '</div>' +
                       '<div class="form-group">' +
                       '{!! Form::label('video', 'Video',array('class' => 'col-sm-2  control-label')) !!}' +
                       '<div class="col-sm-10">' +
                       '{!! Form::text('video', Request::old('video'), array('class' => 'form-control','placeholder'=>'0','style' => 'text-align:right;width:80px')) !!}' +
                       '</div>' +
                       '</div>' +
                       '</div> ' +

                       '<div class="col-xs-6">' +
                       '<div class="form-group">' +
                       '{!! Form::label('streaming', 'Streaming',array('class' => 'col-sm-2 control-label')) !!}' +
                       '<div class="col-sm-10">' +
                       '{!! Form::text('streaming', Request::old('streaming'), array('class' => 'form-control','placeholder'=>'0','style' => 'text-align:right;width:80px')) !!}' +
                       '</div>' +
                       '</div>' +
                       '<div class="form-group">' +
                       '{!! Form::label('data', 'Data',array('class' => 'col-sm-2  control-label')) !!}' +
                       '<div class="col-sm-10">' +
                       '{!! Form::text('data', Request::old('data'), array('class' => 'form-control','placeholder'=>'0','style' => 'text-align:right;width:80px')) !!}' +
                       '</div>' +
                       '</div>' +
                       '<div class="form-group">' +
                       '{!! Form::label('multimedia', 'Multimedia',array('class' => 'col-sm-2 control-label')) !!}' +
                       '<div class="col-sm-10">' +
                       '{!! Form::text('multimedia', Request::old('multimedia'), array('class' => 'form-control','placeholder'=>'0','style' => 'text-align:right;width:80px')) !!}' +
                       '</div>' +
                       '</div>' +
                       '</div>' +
                       '</div>' +
                       '<hr>' +
                       '<div class="row" align="center">' +
                       '{!! Form::button('<b>Simpan</b>',array('class' => 'btn btn-primary','id' => 'simpan')) !!}' +
                       '{!! Form::button('<b>Batal</b>',array('class' => 'btn btn-default','id' => 'batal')) !!}' +
                       '</div>' +
                       '{!! Form::close() !!}' +
                       '</div></div>'

            /*$('#mymodal .body').html(xhtml);
            $('#mymodal').modal();*/

            $('.formx-control').html(xhtml);

            $("#kategori").on('change',function () {
                if ($("#kategori").val()== 'bw') {
                    $('.layanan').html('{!! Form::select('layanan',['uplink' => 'Uplink','downlink' => 'Downlink'],Request::old('layanan'), array('class' => 'form-control')) !!}');
                }else if ($("#kategori").val()== 'p' || $("#kategori").val()== 'bhca' || $("#kategori").val()== 'd' ) {
                    $('.layanan').html('{!! Form::select('layanan',['urban' => 'Urban','suburban' => 'Suburban','rural' => 'Rural'],Request::old('layanan'), array('class' => 'form-control')) !!}');
                }
            });

            $("#simpan").click(function() {
                $.post('/klasifikasi.simpan',
                        {'kategori' : $('#kategori').val(),'layanan':$('#layanan').val(),'voice':$('#voice').val(),'video':$('#video').val(),'streaming':$('#streaming').val(),'data':$('#data').val(),'multimedia':$('#multimedia').val()},
                        function(response) {
                            if (response.success) {
                                $('.formx-control').empty();

                                var xhtml='<a href="#" class="btn btn-primary" id="tambah"><i class="fa fa-plus" aria-hidden="true"></i> Tambah</a> ' +
                                          '<a href="#" id="edit" class="btn btn-warning" ><i class="fa fa-edit" aria-hidden="true"></i> Edit</a> ' +
                                          '{!! Form::open(array('method'=>'DELETE', 'url' => array('#'),'id' =>'frmhapus','style' => 'display:inline')) !!} ' +
                                          '<a href="#" data-toggle="modal" id="hapus" class="btn btn-danger" type="button" data-target="#konfirmHapus"  data-title="Hapus Konfigurasi" data-message="Anda yakin menghapus ?"><i class="fa fa-remove" aria-hidden="true"></i> Hapus</a> ' +
                                          '{!! Form::close() !!} ';

                                $('.buttonx-control').html(xhtml);
                                $('#tklasifikasi').DataTable({
                                    "ajax":  {
                                        "url": '/klasifikasi.data',
                                        "dataSrc": ""
                                    },
                                    "columns": [
                                        { "data": "kategori" },
                                        { "data": "layanan" },
                                        { "data": "voice" },
                                        { "data": "video" },
                                        { "data": "streaming" },
                                        { "data": "data" },
                                        { "data": "multimedia" }
                                    ],
                                    destroy: true,
                                    paging: true,
                                    searching: true,
                                    scrollX: true
                                });
                            }
                        },'json');
            });

            $('#batal').click(function() {
                $('.formx-control').empty();

                var xhtml='<a href="#" class="btn btn-primary" id="tambah"><i class="fa fa-plus" aria-hidden="true"></i> Tambah</a> ' +
                        '<a href="#" id="edit" class="btn btn-warning" ><i class="fa fa-edit" aria-hidden="true"></i> Edit</a> ' +
                        '{!! Form::open(array('method'=>'DELETE', 'url' => array('#'),'id' =>'frmhapus','style' => 'display:inline')) !!} ' +
                        '<a href="#" data-toggle="modal" id="hapus" class="btn btn-danger" type="button" data-target="#konfirmHapus"  data-title="Hapus Konfigurasi" data-message="Anda yakin menghapus ?"><i class="fa fa-remove" aria-hidden="true"></i> Hapus</a> ' +
                        '{!! Form::close() !!} ';

                $('.buttonx-control').html(xhtml);
            });
        });
    </script>

    @include('ext.remove')
@stop


