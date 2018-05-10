@extends('form.app')

{{-- Head --}}
@section('head')
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    @include('ext.generalcss')
    <link rel="stylesheet" href="/datatables/media/css/jquery.dataTables.min.css">
     <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
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
                        <li><i class="fa fa-file-text-o"></i>Seleksi</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Seleksi (Roulette Wheel)
                        </header>
                        <div class="panel-body">
                            <div class="row container">
                                <div class="col-xs-12 col-sm-6 col-md-10">
                                    {!! Form::open(['class' => 'form-horizontal']) !!}
                                    <div class='form-group'>
                                        <label for="plhkecamatan" class="col-sm-2 control-label"><b>Filter Kecamatan</b></label>
                                        {!! Form::select('model',[0 => 'Pilih Kecamatan'] + $selkec,null,['class' => 'form-control col-sm-10 kecamatan','style' => 'width:200px;']) !!}
                                    </div>
                                    {!! Form::close() !!}
                                </div>
                            </div>

                            <div class="row container" style="padding: 30px;">
                                <div class="page-header">
                                    <h3>Permodelan Proses Seleksi <small>Roulette Wheel</small></h3>
                                </div>

                                <table class="display nowrap cell-border" cellspacing="0" width="100%" id="tseleksi">
                                    <thead>
                                    <tr>
                                        <th>id</th>
                                        <th>Generasi</th>
                                        <th>Kromosom</th>
                                        <th>Lokasi</th>
                                        <th>Eval [1/f(x)]</th>
                                        <th>&Sigma; Eval</th>
                                        <th>(Eval / &Sigma; Eval)</th>
                                        <th>&Sigma;(Eval / &Sigma; Eval)</th>
                                        <th>Probabilitas</th>
                                        <th>Acak</th>
                                        <th>Seleksi</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>

                            <div class="row container" style="padding: 30px;">
                                <div class="page-header">
                                    <h3>Populasi Hasil Seleksi <small>Roulette Wheel</small></h3>
                                </div>

                                <table class="display nowrap cell-border" cellspacing="0" width="100%" id="tpopulasi">
                                    <thead>
                                    <tr>
                                        <th>id</th>
                                        <th>Generasi</th>
                                        <th>Kromosom</th>
                                        <th>Lokasi</th>
                                        <th>Latitude (G1)</th>
                                        <th>Longitude (G2)</th>
                                        <th>Near Latitude</th>
                                        <th>Near Longitude</th>
                                        <th>f(x) [Km]</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
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
    <script src="/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>
    <script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.flash.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.html5.min.js"></script>
    <script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.print.min.js"></script>

    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function() {
            $('#tseleksi').DataTable({
                "ajax":  {
                    "url": '/seleksi.data',
                    "dataSrc": ""
                },
                "columns": [
                    { "data": "id" },
                    { "data": "populasi" , "className" : "dt-body-left dt-head-center" },
                    { "data": "iterasi" , "className" : "dt-body-right dt-head-center" },
                    { "data": "kdlokasi" , "className" : "dt-body-center dt-head-center" },
                    { "data": "evaluasi" , "className" : "dt-body-right dt-head-center" },
                    { "data": "sum1" , "className" : "dt-body-right dt-head-center" },
                    { "data": "mod1" , "className" : "dt-body-right dt-head-center" },
                    { "data": "sum2" , "className" : "dt-body-right dt-head-center" },
                    { "data": "mod2", "className" : "dt-body-right dt-head-center" },
                    { "data": "r" , "className" : "dt-body-right dt-head-center" },
                    { "data": "seleksi" , "className" : "dt-body-right dt-head-center" }
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
                 dom: 'Bfrtip',
                buttons: [
                    'copy','excel', 'pdf', 'print'
                ],
                paging: true,
                searching: false,
                scrollX: true,
                stateSave: true,
                stateSaveCallback: function(settings,data) {
                    localStorage.setItem( 'DataTables_' + settings.sInstance, JSON.stringify(data) )
                },
                stateLoadCallback: function(settings) {
                    return JSON.parse( localStorage.getItem( 'DataTables_' + settings.sInstance ) )
                }
            });

            $('#tpopulasi').DataTable({
                "ajax":  {
                    "url": '/seleksi.data2',
                    "dataSrc": ""
                },
                "columns": [
                    { "data": "id" },
                    { "data": "populasi" , "className" : "dt-body-left dt-head-center" },
                    { "data": "iterasi" , "className" : "dt-body-right dt-head-center" },
                    { "data": "kdlokasi" , "className" : "dt-body-center dt-head-center" },
                    { "data": "latitude" , "className" : "dt-body-right dt-head-center" },
                    { "data": "longitude" , "className" : "dt-body-right dt-head-center" },
                    { "data": "nearlat" , "className" : "dt-body-right dt-head-center" },
                    { "data": "nearlong" , "className" : "dt-body-right dt-head-center" },
                    { "data": "fx", "className" : "dt-body-right dt-head-center" }
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
                 dom: 'Bfrtip',
                buttons: [
                    'copy','excel', 'pdf', 'print'
                ],
                paging: true,
                searching: false,
                scrollX: true,
                stateSave: true,
                stateSaveCallback: function(settings,data) {
                    localStorage.setItem( 'DataTables_' + settings.sInstance, JSON.stringify(data) )
                },
                stateLoadCallback: function(settings) {
                    return JSON.parse( localStorage.getItem( 'DataTables_' + settings.sInstance ) )
                }
            });


            $('.kecamatan').change(function () {
                $('#tseleksi').DataTable({
                    "ajax":  {
                        "url": '/seleksi.filter/' +  $(this).val() ,
                        "dataSrc": ""
                    },
                    "columns": [
                        { "data": "id" },
                        { "data": "populasi" , "className" : "dt-body-left dt-head-center" },
                        { "data": "iterasi" , "className" : "dt-body-right dt-head-center" },
                        { "data": "kdlokasi" , "className" : "dt-body-center dt-head-center" },
                        { "data": "evaluasi" , "className" : "dt-body-right dt-head-center" },
                        { "data": "sum1" , "className" : "dt-body-right dt-head-center" },
                        { "data": "mod1" , "className" : "dt-body-right dt-head-center" },
                        { "data": "sum2" , "className" : "dt-body-right dt-head-center" },
                        { "data": "mod2", "className" : "dt-body-right dt-head-center" },
                        { "data": "r" , "className" : "dt-body-right dt-head-center" },
                        { "data": "seleksi" , "className" : "dt-body-right dt-head-center" }
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
                     dom: 'Bfrtip',
                    buttons: [
                        'copy','excel', 'pdf', 'print'
                    ],
                    destroy: true,
                    paging: true,
                    searching: false,
                    scrollX: true,
                    stateSave: true,
                    stateSaveCallback: function(settings,data) {
                        localStorage.setItem( 'DataTables_' + settings.sInstance, JSON.stringify(data) )
                    },
                    stateLoadCallback: function(settings) {
                        return JSON.parse( localStorage.getItem( 'DataTables_' + settings.sInstance ) )
                    }
                });

                $('#tpopulasi').DataTable({
                    "ajax":  {
                        "url": '/seleksi.filter2/' +  $(this).val() ,
                        "dataSrc": ""
                    },
                    "columns": [
                        { "data": "id" },
                        { "data": "populasi" , "className" : "dt-body-left dt-head-center" },
                        { "data": "iterasi" , "className" : "dt-body-right dt-head-center" },
                        { "data": "kdlokasi" , "className" : "dt-body-center dt-head-center" },
                        { "data": "latitude" , "className" : "dt-body-right dt-head-center" },
                        { "data": "longitude" , "className" : "dt-body-right dt-head-center" },
                        { "data": "nearlat" , "className" : "dt-body-right dt-head-center" },
                        { "data": "nearlong" , "className" : "dt-body-right dt-head-center" },
                        { "data": "fx", "className" : "dt-body-right dt-head-center" }
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
                     dom: 'Bfrtip',
                    buttons: [
                        'copy','excel', 'pdf', 'print'
                    ],
                    destroy:true,
                    paging: true,
                    searching: false,
                    scrollX: true,
                    stateSave: true,
                    stateSaveCallback: function(settings,data) {
                        localStorage.setItem( 'DataTables_' + settings.sInstance, JSON.stringify(data) )
                    },
                    stateLoadCallback: function(settings) {
                        return JSON.parse( localStorage.getItem( 'DataTables_' + settings.sInstance ) )
                    }
                });

            });

        });
    </script>
@stop
