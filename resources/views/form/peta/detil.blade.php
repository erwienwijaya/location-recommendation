@extends('form.app')

{{-- Head --}}
@section('head')
    @include('ext.generalcss')
    <link rel="stylesheet" href="/datatables/media/css/jquery.dataTables.min.css">
     <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">

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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Peta Lokasi</h3>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Peta Lokasi
                        </header>
                        <div class="panel-body">
                            <div class="row container">
                                <div class="col-xs-12 col-sm-6 col-md-8">
                                    <div class='form-group'>
                                        <button class="btn btn-info" id ="btnback" style="font-weight: bold;"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i> Kembali</button>
                                    </div>
                                </div>
                            </div>

                            <div class="row container" style="padding: 30px;">
                                <table class="display nowrap cell-border" cellspacing="0" width="100%" id="tpeta">
                                    <thead>
                                    <tr>
                                        <th>Lokasi</th>
                                        <th>Latitude</th>
                                        <th>Longitude</th>
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

@section('gmap')
    <div id="map"></div>

    <script>
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 13,
                center: new google.maps.LatLng({{  $center->latitude  }}, {{  $center->longitude  }}),
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });

            var infowindow = new google.maps.InfoWindow();
            var image = '/images/antena1.png';
            var marker, i;

            $.getJSON('/peta.filter2/' + '{{ $center->kdkec  }}',function(locations) {
                $.each(locations, function(i, item) {
                    marker = new google.maps.Marker({
                        position: new google.maps.LatLng(item.latitude, item.longitude),
                        map: map,
                        icon:image
                    });

                    var pesan = '<p><b>' + item.lokasi  + '</b><br>' +
                            '<b>' + item.kecamatan + ' : ' +item.latitude + ',' + item.longitude + '</b)>' +
                            '</p>';
                    google.maps.event.addListener(marker, 'click', (function (marker, i) {
                        return function () {
                            infowindow.setContent(pesan);
                            infowindow.open(map, marker);
                        }
                    })(marker, i));
                });
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
    <script src="/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>
    <script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.flash.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.html5.min.js"></script>
    <script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.print.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#tpeta').DataTable({
                "ajax": {
                    "url": '/peta.filter2/' + '{{ $center->kdkec  }}',
                    "dataSrc": ""
                },
                "columns": [
                    {"data": "lokasi", "className": "dt-body-center dt-head-center"},
                    {"data": "latitude", "className": "dt-body-right dt-head-center"},
                    {"data": "longitude", "className": "dt-body-right dt-head-center"}
                ], 
                dom: 'Bfrtip',
                buttons: [
                    'copy','excel', 'pdf', 'print'
                ],
                paging: true,
                searching: false,
                scrollX: true,
                stateSave: true,
                stateSaveCallback: function (settings, data) {
                    localStorage.setItem('DataTables_' + settings.sInstance, JSON.stringify(data))
                },
                stateLoadCallback: function (settings) {
                    return JSON.parse(localStorage.getItem('DataTables_' + settings.sInstance))
                }
            });

            /** $('.kecamatan').change(function () {
                $('#tpeta').DataTable({
                    "ajax": {
                        "url": '/peta.filter/' + $(this).val(),
                        "dataSrc": ""
                    },
                    "columns": [
                        {"data": "lokasi", "className": "dt-body-center dt-head-center"},
                        {"data": "latitude", "className": "dt-body-right dt-head-center"},
                        {"data": "longitude", "className": "dt-body-right dt-head-center"}
                    ],
                    dom: 'Bfrtip',
                    buttons: [
                    'copy','excel', 'pdf', 'print'
                    ],
                    destroy: true,
                    paging: false,
                    searching: false,
                    scrollX: true,
                    stateSave: true,
                    stateSaveCallback: function (settings, data) {
                        localStorage.setItem('DataTables_' + settings.sInstance, JSON.stringify(data))
                    },
                    stateLoadCallback: function (settings) {
                        return JSON.parse(localStorage.getItem('DataTables_' + settings.sInstance))
                    }
                });
            }); **/


            $('#btnback').click(function() {
                location.href='/peta';
            });
        });
    </script>
@stop