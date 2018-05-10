@extends('form.app')

{{-- Head --}}
@section('head')
    @include('ext.generalcss')
    <link rel="stylesheet" href="datatables/media/css/jquery.dataTables.min.css">
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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Laporan Kelayakan</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Studi Kelayakan</li>
                        <li><i class="fa fa-file-text-o"></i>Laporan Kelayakan</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Laporan Kelayakan
                        </header>
                        <div class="panel-body">
                            <table class="display nowrap cell-border" cellspacing="0" width="100%" id="tlayak">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Kota</th>
                                    <th>Kecamatan</th>
                                    <th>Kategori</th>
                                    <th>Pathloss (Uplink)</th>
                                    <th>Pathloss (Downlink)</th>
                                    <th>MAPL (Uplink)</th>
                                    <th>MAPL (Downlink)</th>
                                    <th>Kelayakan Uplink</th>
                                    <th>Kelayakan Downlink</th>
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

@section('js')
    @include('ext.generaljs')
    <script src="/datatables/media/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function() {
            var table = $('#tlayak').DataTable({
                "ajax":  {
                    "url": '/laporan.data',
                    "dataSrc": ""
                },
                "columns": [
                    { "data": "id" },
                    { "data": "kota", "className" : "dt-body-left dt-head-center" },
                    { "data": "kecamatan" , "className" : "dt-body-left dt-head-center" },
                    { "data": "kategori", "className" : "dt-body-left dt-head-center" },
                    { "data": "puplink", "className" : "dt-body-right dt-head-center" },
                    { "data": "pdownlink", "className" : "dt-body-right dt-head-center" },
                    { "data": "maplu", "className" : "dt-body-right dt-head-center" },
                    { "data": "mapld", "className" : "dt-body-right dt-head-center" },
                    { "data": "layaku", "className" : "dt-body-center dt-head-center","render" : function ( data) {
                        if (data === 0) {
                            return '<i class="fa fa-close" aria-hidden="true"/>';
                        }
                        return '<i class="fa fa-check" aria-hidden="true"/>';
                    }
                    },
                    { "data": "layakd", "className" : "dt-body-center dt-head-center","render" : function ( data) {
                        if (data === 0) {
                            return '<i class="fa fa-close" aria-hidden="true"/>';
                        }
                        return '<i class="fa fa-check" aria-hidden="true"/>';
                    }
                    }
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
                destroy: true,
                paging: true,
                searching: false,
                scrollX: true,
                stateSave: false,
                stateSaveCallback: function(settings,data) {
                    localStorage.setItem( 'DataTables_' + settings.sInstance, JSON.stringify(data) )
                },
                stateLoadCallback: function(settings) {
                    return JSON.parse( localStorage.getItem( 'DataTables_' + settings.sInstance ) )
                }
            });

        });
    </script>
@stop