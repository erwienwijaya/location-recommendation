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
                        <li><i class="fa fa-file-text-o"></i>Down Tilt</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Populasi
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
                                <hr>
                                <br>
                                <div class="col-xs-12 col-sm-6 col-md-10">
                                    <button class="btn btn-lg btn-primary" id="btnproses" style="font-weight: bold"><i class="fa fa-archive" aria-hidden="true"></i> Kalkulasi Overlapping</button>
                                </div>
                            </div>

                            <div class="row container" style="padding: 30px;">
                                <div id="pesan"></div>
                                <table class="display nowrap cell-border" cellspacing="0" width="100%" id="tdowntilt">
                                    <thead>
                                    <tr>
                                        <th>id</th>
                                        <th>Generasi</th>
                                        <th>Lokasi 1</th>
                                        <th>Lokasi 2</th>
                                        <th>Latitude 1</th>
                                        <th>Longitude 1</th>
                                        <th>Latitude 2</th>
                                        <th>Longitude 2</th>
                                        <th>Jarak (L1 dan L2)</th>
                                        <th>d1</th>
                                        <th>d2</th>
                                        <th>Overlapping</th>
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
            var table = $('#tdowntilt').DataTable({
                "ajax":  {
                    "url": '/downtilt.data',
                    "dataSrc": ""
                },
                "columns": [
                    { "data": "id" },
                    { "data": "populasi" , "className" : "dt-body-left dt-head-center" },
                    { "data": "kdlokasi1" , "className" : "dt-body-center dt-head-center" },
                    { "data": "kdlokasi2" , "className" : "dt-body-center dt-head-center" },
                    { "data": "lat1" , "className" : "dt-body-right dt-head-center" },
                    { "data": "long1" , "className" : "dt-body-right dt-head-center" },
                    { "data": "lat2" , "className" : "dt-body-right dt-head-center" },
                    { "data": "long2" , "className" : "dt-body-right dt-head-center" },
                    { "data": "evaluasi" , "className" : "dt-body-right dt-head-center" },
                    { "data": "d1" , "className" : "dt-body-right dt-head-center" },
                    { "data": "d2" , "className" : "dt-body-right dt-head-center" },
                    { "data": "dt", "className" : "dt-body-right dt-head-center" }
                ],
                "columnDefs": [
                    {
                        "targets": [ 0 ],
                        "visible": false,
                        "searchable": false
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

            $('.kecamatan').on('change',function() {
                var table = $('#tdowntilt').DataTable({
                    "ajax":  {
                        "url": '/downtilt.filter/' +  $(this).val() ,
                        "dataSrc": ""
                    },
                    "columns": [
                        { "data": "id" },
                        { "data": "populasi" , "className" : "dt-body-left dt-head-center" },
                        { "data": "kdlokasi1" , "className" : "dt-body-center dt-head-center" },
                        { "data": "kdlokasi2" , "className" : "dt-body-center dt-head-center" },
                        { "data": "lat1" , "className" : "dt-body-right dt-head-center" },
                        { "data": "long1" , "className" : "dt-body-right dt-head-center" },
                        { "data": "lat2" , "className" : "dt-body-right dt-head-center" },
                        { "data": "long2" , "className" : "dt-body-right dt-head-center" },
                        { "data": "evaluasi" , "className" : "dt-body-right dt-head-center" },
                        { "data": "d1" , "className" : "dt-body-right dt-head-center" },
                        { "data": "d2" , "className" : "dt-body-right dt-head-center" },
                        { "data": "dt", "className" : "dt-body-right dt-head-center" }
                    ],
                    "columnDefs": [
                        {
                            "targets": [ 0 ],
                            "visible": false,
                            "searchable": false
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
            });

            $('#btnproses').click( function() {
                $.ajax({
                    url : '/downtilt.generate',
                    type : 'POST',
                    data : {},
                    success : function(response) {
                        $('#pesan').html('<div class="alert alert-success" role="alert"><i class="fa fa-check"></i><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> Kalkulasi perhitungan overlapping berhasil dibuat</div>');
                    },
                    datatype : 'json'
                });

                var table = $('#tdowntilt').DataTable({
                    "ajax":  {
                        "url": '/downtilt.data',
                        "dataSrc": ""
                    },
                    "columns": [
                        { "data": "id" },
                        { "data": "populasi" , "className" : "dt-body-left dt-head-center" },
                        { "data": "kdlokasi1" , "className" : "dt-body-center dt-head-center" },
                        { "data": "kdlokasi2" , "className" : "dt-body-center dt-head-center" },
                        { "data": "lat1" , "className" : "dt-body-right dt-head-center" },
                        { "data": "long1" , "className" : "dt-body-right dt-head-center" },
                        { "data": "lat2" , "className" : "dt-body-right dt-head-center" },
                        { "data": "long2" , "className" : "dt-body-right dt-head-center" },
                        { "data": "evaluasi" , "className" : "dt-body-right dt-head-center" },
                        { "data": "d1" , "className" : "dt-body-right dt-head-center" },
                        { "data": "d2" , "className" : "dt-body-right dt-head-center" },
                        { "data": "dt", "className" : "dt-body-right dt-head-center" }
                    ],
                    "columnDefs": [
                        {
                            "targets": [ 0 ],
                            "visible": false,
                            "searchable": false
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
