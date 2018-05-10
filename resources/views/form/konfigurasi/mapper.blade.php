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

    <style>
        /* Always set the map height explicitly to define the size of the div
         * element that contains the map. */
        #map {
            height: 400px;
            margin-left: 200px;
            margin-right: 30px ;
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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Titik Pusat Kecamatan</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Studi Kelayakan</li>
                        <li><i class="fa fa-file-text-o"></i>Titik Pusat Kecamatan</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Titik Pusat Kecamatan
                        </header>
                        <div class="panel-body">
                            <div class="left">
                                <a href="{{ URL::to('konfigurasi') }}" class="btn btn-default" ><b><i class="fa fa-chevron-left" aria-hidden="true"></i> Kembali</b></a>
                            </div>
                            <br>
                            <div class="container">
                                <div class="row">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr style="text-align: center">
                                            <td><b>Deskripsi</b></td>
                                            <td><b>Value</b></td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Kode Kecamatan</td>
                                            <td>{{ $konfig->kdkec }}</td>
                                        </tr>
                                        <tr>
                                            <td>Kota</td>
                                            <td>{{ $konfig->kota }}</td>
                                        </tr>
                                        <tr>
                                            <td>Kecamatan</td>
                                            <td>{{ $konfig->kecamatan }}</td>
                                        </tr>
                                        <tr>
                                            <td>Kategori</td>
                                            <td>{{ $konfig->kategori }}</td>
                                        </tr>
                                        <tr>
                                            <td>Latitude</td>
                                            <td>{{ $konfig->latitude }}</td>
                                        </tr>
                                        <tr>
                                            <td>Longitude</td>
                                            <td>{{ $konfig->longitude }}</td>
                                        </tr>
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

@stop

@section('gmap')
    <div id="map"></div>

    <script>
        function initMap() {
            var lat =parseFloat({{ $konfig->latitude  }});
            var lng =parseFloat({{ $konfig->longitude  }});

            var location = { lat: lat , lng: lng };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 12,
                center: location
            });
            var marker = new google.maps.Marker({
                position: location,
                map: map
            });
        }

        google.maps.event.addDomListener(window, 'load',initMap);
    </script>

    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD0xHhaxHv7ZBX3K_v7BBqxLn_I-v2GXGo&callback=initMap">
    </script>
@stop

{{-- js--}}
@section('js')
    @include('ext.generaljs')
@stop