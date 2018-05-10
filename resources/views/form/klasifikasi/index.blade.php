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

                            <div align="right">
                                <a href="{{ URL::to('klasifikasi/create') }}" class="btn btn-primary"><b><i class="fa fa-plus" aria-hidden="true"></i> Tambah</b></a>
                                <a href="#" id="edit" class="btn btn-warning"><b><i class="fa fa-edit" aria-hidden="true"></i> Edit</b></a>
                                {!! Form::open(array('method'=>'DELETE', 'url' => array('#'),'id' =>'frmhapus','style' => 'display:inline')) !!}
                                <a href="#" data-toggle="#" id="hapus" class="btn btn-danger" type="button" data-target="#konfirmHapus"  data-title="Hapus Klasifikasi" data-message="Anda yakin menghapus ?"><b><i class="fa fa-remove" aria-hidden="true"></i> Hapus</b></a>
                                {!! Form::close() !!}

                            </div>

                            <table class="display nowrap cell-border" cellspacing="0" width="100%" id="tklasifikasi">
                                <thead>
                                <tr>
                                    <th>id</th>
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
@stop

{{-- js--}}
@section('js')
    @include('ext.generaljs')
    <script src="/datatables/media/js/jquery.dataTables.min.js"></script>

    <script>
        var table = $('#tklasifikasi').DataTable({
            "ajax":  {
                "url": '/klasifikasi.data',
                "dataSrc": ""
            },
            "columns": [
                { "data": "id" },
                { "data": "kategori", "className" : "dt-body-left dt-head-center" },
                { "data": "layanan" , "className" : "dt-body-left dt-head-center" },
                { "data": "voice", "className" : "dt-body-right dt-head-center" },
                { "data": "video", "className" : "dt-body-right dt-head-center" },
                { "data": "streaming", "className" : "dt-body-right dt-head-center" },
                { "data": "data", "className" : "dt-body-right dt-head-center" },
                { "data": "multimedia", "className" : "dt-body-right dt-head-center" }
            ],
            "columnDefs": [
                {
                    "targets": [ 0 ],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [ 0 ],
                    "visible": false
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

        $('#tklasifikasi tbody').on( 'click', 'tr', function () {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');

            /*edit data*/
            $('#edit').click( function () {
                /*table.row('.selected').remove().draw( false );*/
                var idx=table.row('.selected').index();
                var idcode = table.cell(idx,0).data();

                $(this).attr("href",'klasifikasi/' + idcode + '/edit');

            });

            /*hapus*/
            $('#hapus').click(function () {
                /*table.row('.selected').remove().draw( false );*/
                $(this).attr('data-toggle','modal');
                var idx=table.row('.selected').index();
                var idcode = table.cell(idx,0).data();

                $('#frmhapus').attr("action",'klasifikasi/' + idcode);

            });
        } );
    </script>

    @include('ext.remove')
@stop


