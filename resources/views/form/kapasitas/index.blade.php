@extends('form.app')

{{-- Head --}}
@section('head')
    @include('ext.generalcss')
    <link rel="stylesheet" href="/datatables/media/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css">

    <style>
        div.dataTables_wrapper {
            width : 100%;
            margin: 0 auto;
        }

        .right {
            text-align: right;
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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Kapasitas LTE e-NodeB</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Data Umum</li>
                        <li><i class="fa fa-file-text-o"></i>Kapasitas LTE e-NodeB</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Kapasitas LTE e-NodeB
                        </header>
                        <div class="panel-body">
                            <div style="margin-left: 0px;margin-right: 0px">
                                @include('success.list')
                            </div>

                            <div align="right">
                                <a href="{{ URL::to('kapasitas/create') }}" class="btn btn-primary" ><b><i class="fa fa-plus" aria-hidden="true"></i> Tambah</b></a>
                                <a href="#" id="edit" class="btn btn-warning" ><b><i class="fa fa-edit" aria-hidden="true"></i> Edit</b></a>
                                {!! Form::open(array('method'=>'DELETE', 'url' => array('#'),'id' =>'frmhapus','style' => 'display:inline')) !!}
                                <a href="#" data-toggle="#" id="hapus" class="btn btn-danger" type="button" data-target="#konfirmHapus"  data-title="Hapus Konfigurasi" data-message="Anda yakin menghapus ?"><b><i class="fa fa-remove" aria-hidden="true"></i> Hapus</b></a>
                                {!! Form::close() !!}
                            </div>

                            <table class="display nowrap cell-border" cellspacing="0" width="100%" id="tkapasitas">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Model</th>
                                    <th>Bandwidth (Mhz)</th>
                                    <th>QPSK (Mbps)</th>
                                    <th>16QAM (Mbps)</th>
                                    <th>64QAM (Mbps)</th>
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
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="//cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>


    <script type="text/javascript">
        var table = $('#tkapasitas').DataTable({
            "ajax":  {
                "url": '/kapasitas.data',
                "dataSrc": ""
            },
            "columns": [
                { "data": "id" },
                { "data": "model" , "className" : "dt-body-left dt-head-center" },
                { "data": "bw" , "className" : "dt-body-right dt-head-center" },
                { "data": "qpsk" , "className" : "dt-body-right dt-head-center" },
                { "data": "qam16" , "className" : "dt-body-right dt-head-center" },
                { "data": "qam64" , "className" : "dt-body-right dt-head-center" }
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

        $('#tkapasitas tbody').on( 'click', 'tr', function () {
                table.$('tr.selected').removeClass('selected');
                $(this).addClass('selected');
        });

        /*edit data*/
        $('#tkapasitas tbody').on( 'click', 'tr', function () {
            $('#edit').click( function () {
                /*table.row('.selected').remove().draw( false );*/
                var idx=table.row('.selected').index();
                var idkonfig = table.cell(idx,0).data();

                $(this).attr("href",'kapasitas/' + idkonfig + '/edit');
            });
        });

        /*hapus*/
        $('#tkapasitas tbody').on( 'click', 'tr', function () {
            $('#hapus').on('click',function (e) {
                /*table.row('.selected').remove().draw( false );*/

                $(this).attr('data-toggle','modal');
                var idx = table.row('.selected').index();
                var idkonfig = table.cell(idx, 0).data();

                $('#frmhapus').attr("action", 'kapasitas/' + idkonfig);
            });
        });

    </script>
    @include('ext.remove')

@stop
