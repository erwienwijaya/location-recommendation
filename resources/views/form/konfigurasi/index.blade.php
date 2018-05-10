@extends('form.app')

{{-- Head --}}
@section('head')
    @include('ext.generalcss')
    <link rel="stylesheet" href="/datatables/media/css/jquery.dataTables.min.css">

    <style>
        div.dataTables_wrapper {
            width : 100%;
            margin: 0 auto;
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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Konfigurasi Prakiraan</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Studi Kelayakan</li>
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
                            <div style="margin-left: 0px;margin-right: 0px">
                                @include('success.list')
                            </div>

                            <div align="right">
                                <a href="{{ URL::to('konfigurasi/create') }}" class="btn btn-primary" ><b><i class="fa fa-plus" aria-hidden="true"></i> Tambah</b></a>
                                <a href="#" id="edit" class="btn btn-warning" ><b><i class="fa fa-edit" aria-hidden="true"></i> Edit</b></a>
                                {!! Form::open(array('method'=>'DELETE', 'url' => array('#'),'id' =>'frmhapus','style' => 'display:inline')) !!}
                                <a href="#" data-toggle="#" id="hapus" class="btn btn-danger" type="button" data-target="#konfirmHapus"  data-title="Hapus Konfigurasi" data-message="Anda yakin menghapus ?"><b><i class="fa fa-remove" aria-hidden="true"></i> Hapus</b></a>
                                {!! Form::close() !!}
                                <a href="#" id="mapper" class="btn btn-default" ><b><i class="fa fa-map-marker" aria-hidden="true"></i> Lokasi</b></a>
                            </div>

                            <table class="display nowrap cell-border" cellspacing="0" width="100%" id="tkonfigurasi">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Tahun</th>
                                    <th>Kota</th>
                                    <th>Kecamatan</th>
                                    <th>Luas (Km<sup>2</sup>)</th>
                                    <th>Kategori</th>
                                    <th>Jumlah Penduduk</th>
                                    <th>Kepadatan (/Km<sup>2</sup>)</th>
                                    <th>Site</th>
                                    <th>Prakiraan</th>
                                    <th>Latitude</th>
                                    <th>Longitude</th>
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

    <script type="text/javascript">
       var table = $('#tkonfigurasi').DataTable({
            "ajax":  {
                "url": '/konfigurasi.data',
                "dataSrc": ""
            },
            "columns": [
                { "data": "id" },
                { "data": "tahun", "className" : "dt-body-center dt-head-center" },
                { "data": "kota", "className" : "dt-body-left dt-head-center" },
                { "data": "kecamatan", "className" : "dt-body-left dt-head-center" },
                { "data": "luas", "className" : "dt-body-right dt-head-center" },
                { "data": "kategori", "className" : "dt-body-left dt-head-center" },
                { "data": "jumlah", "className" : "dt-body-right dt-head-center" },
                { "data": "kepadatan", "className" : "dt-body-right dt-head-center" },
                { "data": "site", "className" : "dt-body-right dt-head-center" },
                { "data": "prakiraan", "className" : "dt-body-right dt-head-center" },
                { "data": "latitude", "className" : "dt-body-right dt-head-center" },
                { "data": "longitude", "className" : "dt-body-right dt-head-center" }
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

        $('#tkonfigurasi tbody').on( 'click', 'tr', function () {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');

            /*edit data*/
            $('#edit').click( function () {
                /*table.row('.selected').remove().draw( false );*/
                var idx=table.row('.selected').index();
                var idkonfig = table.cell(idx,0).data();

                $(this).attr("href",'konfigurasi/' + idkonfig + '/edit');

            });

            /*hapus*/
            $('#hapus').click(function () {
                /*table.row('.selected').remove().draw( false );*/
                $(this).attr('data-toggle','modal');
                var idx=table.row('.selected').index();
                var idkonfig = table.cell(idx,0).data();

                $('#frmhapus').attr("action",'konfigurasi/' + idkonfig);
            });

            /*gmap*/
            $('#mapper').click( function () {
                /*table.row('.selected').remove().draw( false );*/
                var idx=table.row('.selected').index();
                var idkonfig = table.cell(idx,0).data();

                $(this).attr("href",'konfigurasi/' + idkonfig);

            });
        } );




    </script>

    @include('ext.remove')
@stop