@extends('form.app')

{{-- Head --}}
@section('head')
    @include('ext.generalcss')
    <link rel="stylesheet" href="datatables/media/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="/angular/dist/css/angular-datatables.min.css">
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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Kota</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Data Umum</li>
                        <li><i class="fa fa-file-text-o"></i>Kategori</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Kota
                        </header>
                        <div class="panel-body">
                            <div style="margin-left: 0px;margin-right: 0px">
                                @include('success.list')
                            </div>

                            <div align="right">
                                <a href="{{ URL::to('kategori/create') }}" class="btn btn-sm btn-danger btn-circle" ><i class="fa fa-plus aria-hidden="true"></i></a>
                            </div>


                            <table class="table hover" id="kategori">
                                <thead>
                                <tr>
                                    <th>Kode</th>
                                    <th>Kategori</th>
                                    <th style="text-align: center;">Action</th>
                                </tr>
                                </thead>
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
        $('#kategori').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{!! URL::to('kategori.data') !!}',
            columns: [
                {data: 'kdkat'},
                {data: 'kategori', name: 'kategori'},
                {data: 'action', name: 'action', orderable: false, searchable: false}
            ]
        });
    </script>
    @include('ext.remove')
@stop