@extends('form.app')

{{-- Head --}}
@section('head')
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    @include('ext.generalcss')
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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Spesifikasi Okumura Hata</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Data Umum</li>
                        <li><i class="fa fa-file-text-o"></i>Spesifikasi Okumura Hata</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Spesifikasi Okumura Hata
                        </header>
                        <div class="panel-body">
                            <div class="container">
                            <div class="row">
                                <div style="margin-left: 0px;margin-right: 0px" id="pesan"></div>

                                <table class="table table-bordered table-condensed table-hover">
                                    <thead>
                                        <tr style="text-align: center;font-weight: bold;">
                                            <td>Deskripsi</td>
                                            <td>Value</td>
                                            <td>Satuan</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                           <td>F<small>m</small> Uplink</td>
                                           <td style="text-align: right" id="s1">0</td>
                                           <td>MHz</td>
                                        </tr>
                                        <tr>
                                            <td>F<small>m</small> Downlink</td>
                                            <td style="text-align: right" id="s2">0</td>
                                            <td>MHz</td>
                                        </tr>
                                        <tr>
                                            <td>Tinggi MS (H<small>R</small>)</td>
                                            <td style="text-align: right" id="s3">0</td>
                                            <td>m</td>
                                        </tr>
                                        <tr>
                                            <td>BS Antena Height Urban (H<small>t</small>)</td>
                                            <td style="text-align: right" id="s4">0</td>
                                            <td>m</td>
                                        </tr>
                                        <tr>
                                            <td>BS Antena Height Sub Urban (H<small>t</small>)</td>
                                            <td style="text-align: right" id="s5">0</td>
                                            <td>m</td>
                                        </tr>
                                        <tr>
                                            <td>BS Antena Height Rural (H<small>t</small>)</td>
                                            <td style="text-align: right" id="s6">0</td>
                                            <td>m</td>
                                        </tr>
                                        <tr>
                                            <td>a (H<small>R</small>) Uplink (dB)</td>
                                            <td style="text-align: right" id="s7">0</td>
                                            <td> <button class="btn btn-sm btn-default" id="uplnk" style="font-weight: bold"><i class="fa fa-cloud-download" aria-hidden="true"></i> Hitung</button></td>
                                        </tr>
                                        <tr>
                                            <td>a (H<small>R</small>) Downlink (dB)</td>
                                            <td style="text-align: right" id="s8">0</td>
                                            <td> <button class="btn btn-sm btn-default" id="dwlnk" style="font-weight: bold"><i class="fa fa-cloud-download" aria-hidden="true"></i> Hitung</button></td>
                                        </tr>
                                        <tr>
                                            <td>MAPL Uplink</td>
                                            <td style="text-align: right" id="s9">0</td>
                                            <td>dB</td>
                                        </tr>
                                        <tr>
                                            <td>MAPL Downlink</td>
                                            <td style="text-align: right" id="s10">0</td>
                                            <td>dB</td>
                                        </tr>
                                        <tr>
                                            <td>CM</td>
                                            <td style="text-align: right" id="s11">0</td>
                                            <td>dB</td>
                                        </tr>
                                        <tr>
                                            <td>&theta; Urban</td>
                                            <td style="text-align: right" id="s12">0</td>
                                            <td>&deg;</td>
                                        </tr>
                                        <tr>
                                            <td>&theta; Sub Urban</td>
                                            <td style="text-align: right" id="s13">0</td>
                                            <td>&deg;</td>
                                        </tr>
                                        <tr>
                                            <td>&theta; Rural</td>
                                            <td style="text-align: right" id="s14">0</td>
                                            <td>&deg;</td>
                                        </tr>
                                        <tr>
                                            <td>Overlapping (Max.)</td>
                                            <td style="text-align: right" id="s15">0</td>
                                            <td>Meter</td>
                                        </tr>
                                        <tr>
                                            <td>BlindSpot (Max.)</td>
                                            <td style="text-align: right" id="s16">0</td>
                                            <td>Meter</td>
                                        </tr>
                                    </tbody>
                                </table>

                                <div align="center" id="xubah">
                                    <button class="btn btn-lg btn-primary" id="ubah"><b><i class="fa fa-edit" aria-hidden="true"></i> Ubah Spesifikasi</b></button>
                                </div>

                                <div align="center" id="xsimpan">
                                    <button class="btn btn-lg btn-success" id="simpan"><b><i class="fa fa-database" aria-hidden="true"></i> Simpan Spesifikasi</b></button>
                                </div>

                            </div>
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

    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function() {
           $('#xsimpan').hide();
           $('#uplnk').hide();
           $('#dwlnk').hide();
           $.getJSON('/okumura.data',function(data) {
               $('#s1').html(data['fuplink']);
               $('#s2').html(data['fdownlink']);
               $('#s3').html(data['hms']);
               $('#s4').html(data['hbsurban']);
               $('#s5').html(data['hbssurban']);
               $('#s6').html(data['hbsrural']);
               $('#s7').html(data['auplink']);
               $('#s8').html(data['adownlink']);
               $('#s9').html(data['maplu']);
               $('#s10').html(data['mapld']);
               $('#s11').html(data['cm']);
               $('#s12').html(data['thurban']);
               $('#s13').html(data['thsurban']);
               $('#s14').html(data['thrural']);
               $('#s15').html(data['overlap']);
               $('#s16').html(data['blindspot']);
           });
        });

        $('#ubah').click(function() {
            $.getJSON('/okumura.data',function(data) {
                $('#s1').html('<input type="text" id="fuplink" class="form-control" style="text-align:right;width:200px" value=' + data["fuplink"] + '>');
                $('#fuplink').focus();
                $('#s2').html('<input type="text" id="fdownlink" class="form-control" style="text-align:right;width:200px" value=' + data["fdownlink"] + '>');
                $('#s3').html('<input type="text" id="hms" class="form-control" style="text-align:right;width:200px" value=' + data["hms"] + '>');
                $('#s4').html('<input type="text" id="hbsurban" class="form-control" style="text-align:right;width:200px" value=' + data["hbsurban"] + '>');
                $('#s5').html('<input type="text" id="hbssurban" class="form-control" style="text-align:right;width:200px" value=' + data["hbssurban"] + '>');
                $('#s6').html('<input type="text" id="hbsrural" class="form-control" style="text-align:right;width:200px" value=' + data["hbsrural"] + '>');
                $('#s7').html('<input type="text" id="auplink" class="form-control" style="text-align:right;width:200px" readonly value=' + data["auplink"] + '>');
                $('#s8').html('<input type="text" id="adownlink" class="form-control" style="text-align:right;width:200px" readonly value=' + data["adownlink"] + '>');
                $('#s9').html('<input type="text" id="maplu" class="form-control" style="text-align:right;width:200px" value=' + data["maplu"] + '>');
                $('#s10').html('<input type="text" id="mapld" class="form-control" style="text-align:right;width:200px" value=' + data["mapld"] + '>');
                $('#s11').html('<input type="text" id="cm" class="form-control" style="text-align:right;width:200px" value=' + data["cm"] + '>');
                $('#s12').html('<input type="text" id="thurban" class="form-control" style="text-align:right;width:200px" value=' + data["thurban"] + '>');
                $('#s13').html('<input type="text" id="thsurban" class="form-control" style="text-align:right;width:200px" value=' + data["thsurban"] + '>');
                $('#s14').html('<input type="text" id="thrural" class="form-control" style="text-align:right;width:200px" value=' + data["thrural"] + '>');
                $('#s15').html('<input type="text" id="overlap" class="form-control" style="text-align:right;width:200px" value=' + data["overlap"] + '>');
                $('#s16').html('<input type="text" id="blindspot" class="form-control" style="text-align:right;width:200px" value=' + data["blindspot"] + '>');
            });
            $('#xubah').hide();
            $('#xsimpan').show();
            $('#uplnk').show();
            $('#dwlnk').show();

        });

        $('#simpan').click(function() {
            $.post('/okumura.simpan',{'fuplink' : $('#fuplink').val(),'fdownlink' : $('#fdownlink').val(),'hms' : $('#hms').val(),'hbsurban' : $('#hbsurban').val(),'hbssurban' : $('#hbssurban').val(),'hbsrural' : $('#hbsrural').val(),'auplink' : $('#auplink').val(),'adownlink' : $('#adownlink').val(),'maplu' : $('#maplu').val(),'mapld' : $('#mapld').val(),'cm' : $('#cm').val(),'thurban':$('#thurban').val(),'thsurban':$('#thsurban').val(),'thrural':$('#thrural').val(),'overlap': $('#overlap').val(),'blindspot':$('#blindspot').val() },function(response) {
                if (response.success) {
                    $.getJSON('/okumura.data',function(data) {
                        $('#s1').html(data['fuplink']);
                        $('#s2').html(data['fdownlink']);
                        $('#s3').html(data['hms']);
                        $('#s4').html(data['hbsurban']);
                        $('#s5').html(data['hbssurban']);
                        $('#s6').html(data['hbsrural']);
                        $('#s7').html(data['auplink']);
                        $('#s8').html(data['adownlink']);
                        $('#s9').html(data['maplu']);
                        $('#s10').html(data['mapld']);
                        $('#s11').html(data['cm']);
                        $('#s12').html(data['thurban']);
                        $('#s13').html(data['thsurban']);
                        $('#s14').html(data['thrural']);
                        $('#s15').html(data['overlap']);
                        $('#s16').html(data['blindspot']);

                    });
                    $('#xubah').show();
                    $('#xsimpan').hide();
                    $('#pesan').html('<div class="alert alert-info" role="alert"><i class="fa fa-check-circle-o" aria-hidden="true"></i> Spesifikasi Okumura hata telah dirubah <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button></div>');
                }
            },'json');

            $('#uplnk').hide();
            $('#dwlnk').hide();
        });

        $('#uplnk').on('click', function() {
            var uplink = (1.1 * Math.log10(parseFloat($('#fuplink').val())-0.7) * parseFloat($('#hms').val()) -(1.56 * Math.log10(parseFloat($('#fuplink').val()) - 0.8)))/(parseFloat($('#fuplink').val())/1000);
            $('#auplink').val(parseFloat(uplink));
        });

        $('#dwlnk').on('click', function() {
            var downlink = (1.1 * Math.log10(parseFloat($('#fdownlink').val())-0.7) * parseFloat($('#hms').val()) -(1.56 * Math.log10(parseFloat($('#fdownlink').val()) - 0.8)))/(parseFloat($('#fdownlink').val())/1000);
            $('#adownlink').attr('value',function() {
                return parseFloat(downlink);
            });
        });


    </script>
@stop