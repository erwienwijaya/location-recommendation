@extends('form.app')

{{-- Head --}}
@section('head')
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
                            <div style="margin-left: 0px;margin-right: 0px;margin-top: 20px">
                                @include('errors.list')
                            </div>

                            {!! Form::open(array('url' => 'kapasitas','class' => 'form-horizontal','role' => 'form')) !!}
                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('bw', 'BandWidth',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::text('bandwidth', Request::old('BandWidth'), array('class' => 'form-control','placeholder' => '0','style' => 'text-align:right;width:150px')) !!}
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('qpsk', 'QPSK',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::text('qpsk', Request::old('qpsk'), array('class' => 'form-control','placeholder' => '0','style' => 'text-align:right;width:150px')) !!}
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('qam16', '16QAM',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::text('qam16', Request::old('qam16'), array('class' => 'form-control','placeholder' => '0','style' => 'text-align:right;width:150px')) !!}
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-4" align="right">
                                    {!! Form::label('qam64', '64QAM',array('class' => 'control-label')) !!}
                                </div>
                                <div class="col-md-6">
                                    {!! Form::text('qam64', Request::old('qam64'), array('class' => 'form-control','placeholder' => '0','style' => 'text-align:right;width:150px')) !!}
                                </div>
                            </div>

                            <div align="center">
                                <a href="{{ URL::to('/kapasitas')}}" type="button" class="btn btn-default btn-lg" data-dismiss="modal"><b><i class="fa fa-chevron-left" aria-hidden="true"></i> Batal</b></a>
                                <button type="submit" class="btn btn-primary btn-lg"><b><i class="fa fa-database" aria-hidden="true"></i> Simpan</b></button>
                            </div>
                            {!! Form::close()!!}

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
@stop