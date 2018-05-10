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


        #mymodal2 .modal-dialog  {width:900px;}


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
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Prakiraan Pelanggan</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="icon_document_alt"></i>Studi Kelayakan</li>
                        <li><i class="fa fa-file-text-o"></i>Prakiraan Pelanggan</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Prakiraan Pelanggan
                        </header>
                        <div class="panel-body">
                            <div style="margin-left: 0px;margin-right: 0px">
                                @include('success.list')
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <table class="table table-bordered" style="alignment-baseline:central">
                                        <tbody>
                                            <tr>
                                                <td colspan="5">
                                                    {!! Form::open(array('class' => 'form-horizontal','role' => 'form')) !!}
                                                    <div class="col-md-4" align="left">
                                                        {!! Form::label('tahun', 'Tahun',array('class' => 'control-label')) !!}
                                                    </div>
                                                    <div class="col-md-6" align="left">
                                                        {!! Form::select('tahun', $seltahun,Request::old('tahun'), array('class' => 'form-control','style' => 'text-align:left;width:150px')) !!}
                                                    </div>
                                                    {!! Form::close() !!}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="5">
                                                    {!! Form::open(array('class' => 'form-horizontal','role' => 'form')) !!}
                                                    <div class="col-md-4" align="left">
                                                        {!! Form::label('kota', 'Kota',array('class' => 'control-label')) !!}
                                                    </div>
                                                    <div class="col-md-6" align="left">
                                                        <select class="form-control" id="kota" style="text-align:left;width:250px">
                                                            <option>Pilih Tahun</option>
                                                        </select>
                                                        {!! Form::label('pilih', 'Pilih kota untuk melihat detil info',array('class' => 'control-label')) !!}
                                                    </div>
                                                    {!! Form::close() !!}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="5">
                                                    {!! Form::open(array('class' => 'form-horizontal','role' => 'form')) !!}
                                                    <div class="col-md-4" align="left">
                                                        {!! Form::label('potensial', 'Pelanggan Potensial (%)',array('class' => 'control-label')) !!}
                                                    </div>
                                                    <div class="col-md-6" align="left">
                                                        <input type="text" id="prakiraan" class="form-control" style="text-align:right;width:150px" placeholder="Prakiraan Potensial">
                                                    </div>
                                                    {!! Form::close() !!}
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>


                                    <table class="table table-bordered" style="alignment-baseline:central" id="tpenjelasan">
                                        <thead>
                                            <tr>
                                                <th>Kecamatan</th>
                                                <th>Kategori</th>
                                                <th>Jumlah</th>
                                                <th>Kepadatan</th>
                                                <th>Site</th>
                                            </tr>
                                        </thead>
                                        <tbody >
                                               <tr>
                                                   <td colspan="5" align="center">Data tidak ditemukan : (Pilih tahun dan Kota)</td>
                                               </tr>
                                        </tbody>
                                    </table>
                                    <button class="btn btn-success" id="lihat" data-toggle="modal"><b><i class="fa fa-calendar-check-o" aria-hidden="true"></i> Lihat Setup Prakiraan</b></button>
                                </div>
                                <div class="col-md-6">
                                    <table class="table table-bordered" style="alignment-baseline:central">
                                        <tbody>
                                        <tr>
                                            <td colspan="5">
                                                {!! Form::open(array('class' => 'form-horizontal','role' => 'form')) !!}
                                                <div class="col-md-5" align="left">
                                                    {!! Form::label('rumus1', 'Rumus Perkiraan',array('class' => 'control-label')) !!}
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <b>U<sub>n</sub> = U<sub>o</sub> * (1 + F<sub>p</sub>)<sup>n</sup></b>
                                                </div>
                                                {!! Form::close() !!}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                {!! Form::open(array('class' => 'form-horizontal','role' => 'form')) !!}
                                                <div class="col-md-5" align="left">
                                                    {!! Form::label('jumlah', 'Jumlah Tahun Prediksi (n)',array('class' => 'control-label')) !!}
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <input type="text" id="jumlah" class="form-control" style="text-align:right;width:150px" placeholder="Jumlah Tahun">
                                                </div>
                                                {!! Form::close() !!}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                {!! Form::open(array('class' => 'form-horizontal','role' => 'form')) !!}
                                                <div class="col-md-5" align="left">
                                                    {!! Form::label('asumsi', 'Faktor Pertumbuhan Asumsi (p)',array('class' => 'control-label')) !!}
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <input type="text" id="asumsi" class="form-control" style="text-align:right;width:150px" placeholder="Asumsi">
                                                </div>
                                                {!! Form::close() !!}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                <b>Hasil Perkiraan Pertumbuhan Pelanggan</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td  colspan="5">
                                                {!! Form::open(array('class' => 'form-horizontal','role' => 'form')) !!}
                                                    <div class="col-md-5" align="left">
                                                        {!! Form::label('tahunprakiraan', 'Tahun',array('class' => 'control-label')) !!}
                                                    </div>
                                                    <div class="col-md-6" align="left">
                                                        <input type="text" id="thnprakiraan" class="form-control" readonly style="text-align:right;width:150px" placeholder="Tahun">
                                                    </div>
                                                {!! Form::close() !!}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td  colspan="5">
                                                {!! Form::open(array('class' => 'form-horizontal','role' => 'form')) !!}
                                                <div class="col-md-5" align="left">
                                                    {!! Form::label('jumlahprakiraan', 'Prakiraan Pertumbuhan',array('class' => 'control-label')) !!}
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <input type="hidden" id="jmlprakiraan" class="form-control">
                                                    <input type="text" id="hasilprakiraan" class="form-control" readonly style="text-align:right;width:150px" placeholder="Pertumbuhan">
                                                </div>
                                                {!! Form::close() !!}
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>

                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="page-header">
                                                <b>Distribusi Market Daerah Perencanaan</b><br>
                                            </div>


                                            <div class="cek" align="left">

                                            </div>

                                            <table id="dataku" class="display" cellspacing="0" width="100%">
                                                <thead>
                                                <tr>
                                                    <th>Kecamatan</th>
                                                    <th>Kategori</th>
                                                    <th>Prakiraan</th>
                                                    <th>Distribusi</th>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>

    <div class="modal fade" id="mymodal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-center" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">
                    <div class="master"></div>
                    <div class="detil"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade " id="mymodal2" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">
                    <div class="master"></div>
                    <div class="detil"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
@stop

{{-- js--}}
@section('js')
    @include('ext.generaljs')

    <script src="/datatables/media/js/jquery.dataTables.min.js"></script>


    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function() {
            $("#tahun").click(function() {
                $.getJSON("/getkota/" + $("#tahun").val(), function(data) {
                    var $kota = $("#kota");
                    $kota.empty();
                    $("#prakiraan").val("0");
                    $("#jumlah").val("0");
                    $("#asumsi").val("0");
                    $("#jmlprakiraan").val("0");
                    $("#thnprakiraan").val("0");
                    $("#hasilprakiraan").val("0");

                    $.each(data, function(index, value) {
                        $kota.append('<option value="' + index +'">' + value + '</option>');
                    });
                });
            });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#kota").click(function() {
                $.getJSON("/getdata/" + $("#tahun").val() + '/' + $("#kota").val(), function(data) {

                    var $tdesc = $("#tpenjelasan tbody");

                    var totjumlah=0;
                    var totkepadatan=0;
                    var totsite=0;
                    var nomor=1;


                    $tdesc.empty();
                    $('.cek').empty();
                    $('#dataku tbody').empty();

                    $("#prakiraan").val("0");
                    $("#jumlah").val("0");
                    $("#asumsi").val("0");
                    $("#jmlprakiraan").val("0");
                    $("#thnprakiraan").val("0");
                    $("#hasilprakiraan").val("0");

                    $.each(data, function(i, item) {
                        $tdesc.append(
                                "<tr>"
                                +"<td>"+ item.kecamatan +"</td>"
                                +"<td>"+ item.kategori +"</td>"
                                +"<td align='right'>"+ item.jumlah +"</td>"
                                +"<td align='right'>"+ item.kepadatan +"</td>"
                                +"<td align='right'>"+ item.site +"</td>"
                                +"</tr>" );


                        totjumlah += parseInt(item.jumlah);
                        totkepadatan += parseInt(item.kepadatan);
                        totsite += parseInt(item.site);
                    });
                    $tdesc.append('<tr><td colspan="2">Total</td><td align="right">'+ parseInt(totjumlah) +'</td><td align="right">'+ parseInt(totkepadatan) +'</td><td align="right">'+ parseInt(totsite) +'</td></tr>');
                    $tdesc.append('<tr><td colspan="2">Prakiraan Pelanggan Potensial (0%)</td><td align="right">0</td><td colspan="2"></td></tr>');
                    $("#jmlprakiraan").val(Math.ceil(($("#prakiraan").val() / 100) * parseInt(totjumlah)));
                });

            });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#prakiraan").on('change keyup',function() {
                $.getJSON("/getdata/" + $("#tahun").val() + '/' + $("#kota").val(), function(data) {

                    var $tdesc = $("#tpenjelasan tbody");
                    var totjumlah=0;
                    var totkepadatan=0;
                    var totsite=0;
                    var nomor=1;

                    $tdesc.empty();
                    $('.cek').empty();
                    $('#dataku tbody').empty();

                    $("#jumlah").val("0");
                    $("#asumsi").val("0");
                    $("#jmlprakiraan").val("0");
                    $("#thnprakiraan").val("0");
                    $("#hasilprakiraan").val("0");

                    $.each(data, function(i, item) {
                        $tdesc.append(
                                "<tr>"
                                +"<td>"+ item.kecamatan +"</td>"
                                +"<td>"+ item.kategori+"</td>"
                                +"<td align='right'>"+ item.jumlah +"</td>"
                                +"<td align='right'>"+ item.kepadatan +"</td>"
                                +"<td align='right'>"+ item.site +"</td>"
                                +"</tr>" );

                        totjumlah += parseInt(item.jumlah);
                        totkepadatan += parseInt(item.kepadatan);
                        totsite += parseInt(item.site);
                    });
                    $tdesc.append('<tr><td colspan="2">Total</td><td align="right">'+ parseInt(totjumlah) +'</td><td align="right">'+ parseInt(totkepadatan) +'</td><td align="right">'+ parseInt(totsite) +'</td></tr>');
                    $tdesc.append('<tr><td colspan="2">Prakiraan Pelanggan Potensial ('+ $("#prakiraan").val()  + '%)</td><td align="right">'+ Math.ceil(($("#prakiraan").val() / 100) * parseInt(totjumlah)) +'</td><td colspan="2"></td></tr>');

                    $("#jmlprakiraan").val(Math.ceil(($("#prakiraan").val() / 100) * parseInt(totjumlah)));

                });

            });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#jumlah").on('change keyup',function() {
                var tahun = $("#tahun").val();
                var Uo = $("#jmlprakiraan").val();
                var Fp = $("#asumsi").val();
                var n =  $("#jumlah").val();
                hasil =  parseFloat(Uo) * Math.pow(1 + parseFloat(Fp),parseInt(n)) ;

                $("#thnprakiraan").val(parseInt(tahun) + parseInt(n));
                $("#hasilprakiraan").val(Math.ceil(hasil));

                $('#dataku').DataTable({
                    "ajax":  {
                        "url": '/getdataprakiraan/' + $("#tahun").val() + '/' + $("#kota").val() + '/' + Math.ceil(hasil),
                        "dataSrc": ""
                    },
                    "columns": [
                        { "data": "kecamatan" },
                        { "data": "kategori" },
                        { "data": "prakiraan" },
                        { "data": "hasil" }
                    ],
                    destroy: true,
                    paging: true,
                    searching: false,
                    scrollX: true
                });

                $(".cek").html(" <button class='btn btn-primary' id='ngecek' data-toggle='modal'><b><i class='fa fa-save' aria-hidden='true'></i>Simpan Konfigurasi</b></button>");
                $('#ngecek').on('click',function() {
                    $.getJSON("/getcekprosen/" + $("#tahun").val() + '/' + $("#kota").val(), function(data) {
                        $.each(data, function(i, item) {
                            if (item.prosen > 100 ) {
                                $('#mymodal').find('.modal-title').html('<i class="fa fa-shield" aria-hidden="true"></i> Pemeriksaan Bobot');
                                $('#mymodal').find('.master').html('');
                                $('#mymodal .modal-body .detil').html('Bobot prakiraan ' + item.prosen + '% <br>Bobot prakiraan tidak boleh melebihi dari 100% <br> Setting kembali prakiraan melalui <b>Konfigurasi Prakiraan</b>');
                                $('#mymodal').modal();
                            }else if(item.prosen < 100) {
                                $('#mymodal').find('.modal-title').html('<i class="fa fa-shield" aria-hidden="true"></i> Pemeriksaan Bobot');
                                $('#mymodal').find('.master').html('');
                                $('#mymodal .modal-body .detil').html('Bobot prakiraan ' + item.prosen + '% <br>Bobot prakiraan tidak boleh kurang dari 100% <br> Setting kembali prakiraan melalui <b>Konfigurasi Prakiraan</b>');
                                $('#mymodal').modal();
                            }else if(item.prosen = 100) {
                                $.post('/simpan',{'tahun':$('#tahun').val(),'kota' : $('#kota').val(),'potensial' : $('#prakiraan').val(),'prediksi' : $('#jumlah').val(),'asumsi' : $('#asumsi').val(),'pelanggan':$('#hasilprakiraan').val() },function(response) {
                                    if (response.success) {
                                        $('#mymodal').find('.modal-title').html('<i class="fa fa-check" aria-hidden="true"></i> Berhasil');
                                        $('#mymodal').find('.master').html('');
                                        $('#mymodal .modal-body .detil').html('Setup <b>prakiraan pelanggan</b> berhasil disimpan');
                                        $('#mymodal').modal();
                                    }
                                },'json');
                            }
                        });
                    });
                });
            });

            $("#asumsi").on('change keyup',function() {
                var tahun = $("#tahun").val();
                var Uo = $("#jmlprakiraan").val();
                var Fp = $("#asumsi").val();
                var n =  $("#jumlah").val();
                hasil =  parseFloat(Uo) * Math.pow(1 + parseFloat(Fp),parseInt(n)) ;

                $("#thnprakiraan").val(parseInt(tahun) + parseInt(n));
                $("#hasilprakiraan").val(Math.ceil(hasil));

                $('#dataku').DataTable({
                    "ajax":  {
                        "url": '/getdataprakiraan/' + $("#tahun").val() + '/' + $("#kota").val() + '/' + Math.ceil(hasil),
                        "dataSrc": ""
                    },
                    "columns": [
                        { "data": "kecamatan" },
                        { "data": "kategori" },
                        { "data": "prakiraan" },
                        { "data": "hasil" }
                    ],
                    destroy: true,
                    paging: true,
                    searching: false,
                    scrollX: true
                });

                $(".cek").html(" <button class='btn btn-primary' id='ngecek' data-toggle='modal'><b><i class='fa fa-save' aria-hidden='true'></i> Simpan Konfigurasi</b></button>");
                $('#ngecek').on('click',function() {
                    $.getJSON("/getcekprosen/" + $("#tahun").val() + '/' + $("#kota").val(), function(data) {
                        $.each(data, function(i, item) {
                            if (item.prosen > 100 ) {
                                $('#mymodal').find('.modal-title').html('<i class="fa fa-shield" aria-hidden="true"></i> Pemeriksaan Bobot');
                                $('#mymodal').find('.master').html('');
                                $('#mymodal .modal-body .detil').html('Bobot prakiraan ' + item.prosen + '% <br>Bobot prakiraan tidak boleh melebihi dari 100% <br> Setting kembali prakiraan melalui <b>Konfigurasi Prakiraan</b>');
                                $('#mymodal').modal();
                            }else if(item.prosen < 100) {
                                $('#mymodal').find('.modal-title').html('<i class="fa fa-shield" aria-hidden="true"></i> Pemeriksaan Bobot');
                                $('#mymodal').find('.master').html('');
                                $('#mymodal .modal-body .detil').html('Bobot prakiraan ' + item.prosen + '% <br>Bobot prakiraan tidak boleh kurang dari 100% <br> Setting kembali prakiraan melalui <b>Konfigurasi Prakiraan</b>');
                                $('#mymodal').modal();
                            }else if(item.prosen = 100) {
                                $.post('/simpan',{'tahun':$('#tahun').val(),'kota' : $('#kota').val(),'potensial' : $('#prakiraan').val(),'prediksi' : $('#jumlah').val(),'asumsi' : $('#asumsi').val(),'pelanggan':$('#hasilprakiraan').val()},function(response) {
                                    if (response.success) {
                                        $('#mymodal').find('.modal-title').html('<i class="fa fa-check" aria-hidden="true"></i> Berhasil');
                                        $('#mymodal').find('.master').html('');
                                        $('#mymodal .modal-body .detil').html('Setup <b>prakiraan pelanggan</b> berhasil disimpan');
                                        $('#mymodal').modal();
                                    }
                                },'json');
                            }
                        });

                    });
                });
            });

        });

        $('#lihat').on('click',function() {
            $('#mymodal2').find('.modal-title').html('<i class="fa fa-bullhorn" aria-hidden="true"></i> Hasil Setup Prakiraan');
            $.getJSON("/master",function(data) {
                $.each(data,function(i,item) {
                    var xhtml='<form class="form-horizontal">' +
                            '<div class="col-xs-6">' +
                            '<div class="form-group"><label for="tahun" class="col-sm-6 control-label">Tahun Data</label><input type="text" class="form-control col-sm-6" value="' + item.tahun + '" readonly style="width:80px"></div>' +
                            '<div class="form-group"><label for="kota" class="col-sm-6 control-label">Kota</label><input type="text" class="form-control col-sm-6" value="' + item.kota + '" readonly style="width:200px"></div>' +
                            '<div class="form-group"><label for="potensial" class="col-sm-6 control-label">Pelanggan Potensial (%)</label><input type="text" class="form-control col-sm-6" value="' + item.potensial + '" readonly style="width:80px"></div>' +
                            '</div>' +
                            '<div class="col-xs-6">' +
                            '<div class="form-group"><label for="prediksi" class="col-sm-6 control-label">Tahun Prediksi</label><input type="text" class="form-control col-sm-6" value="' + (parseInt(item.tahun) + parseInt(item.prediksi))  + '" readonly style="width:80px"></div>' +
                            '<div class="form-group"><label for="asumsi" class="col-sm-6 control-label">Asumsi</label><input type="text" class="form-control col-sm-6" value="' + item.asumsi + '" readonly style="width:80px"></div>' +
                            '</div>' +
                            '</form>';
                    $('#mymodal2').find('.master').html(xhtml);
                });
            });

            var phtml=' <table id="tkonfig" class="display" cellspacing="0" width="100%"><thead><tr><th>Kecamatan</th><th>Kategori</th><th>Prakiraan</th><th>Pelanggan</th></tr></thead></table>';
            $('#mymodal2').find('.detil').html(phtml);

            $('#tkonfig').DataTable({
                "ajax":  {
                    "url": '/detil',
                    "dataSrc": ""
                },
                "columns": [
                    { "data": "kecamatan" },
                    { "data": "kategori" },
                    { "data": "prakiraan" },
                    { "data": "pelanggan" }
                ],
                destroy: true,
                paging: true,
                searching: false,
                redraw:true
            });
            $('#mymodal2').modal();
        });
    </script>
@stop




