@extends('form.app')

{{-- Head --}}
@section('head')
    @include('ext.head')
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
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!--overview start-->
       
            </div><!--/.row-->


            <div class="row">
                <div class="col-lg-9 col-md-12">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><i class="fa fa-map-marker red"></i><strong>Countries</strong></h2>
                            <div class="panel-actions">
                                <a href="form/index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                                <a href="form/index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                <a href="form/index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                            </div>
                        </div>
                        <div class="panel-body-map">
                            <div id="map" style="height:380px;"></div>
                        </div>

                    </div>
                </div>
                <div class="col-md-3">
                    <!-- List starts -->
                    <ul class="today-datas">
                        <!-- List #1 -->
                        <li>
                            <!-- Graph -->
                            <div><span id="todayspark1" class="spark"></span></div>
                            <!-- Text -->
                            <div class="datas-text">11,500 visitors/day</div>
                        </li>
                        <li>
                            <div><span id="todayspark2" class="spark"></span></div>
                            <div class="datas-text">15,000 Pageviews</div>
                        </li>
                        <li>
                            <div><span id="todayspark3" class="spark"></span></div>
                            <div class="datas-text">30.55% Bounce Rate</div>
                        </li>
                        <li>
                            <div><span id="todayspark4" class="spark"></span></div>
                            <div class="datas-text">$16,00 Revenue/Day</div>
                        </li>
                        <li>
                            <div><span id="todayspark5" class="spark"></span></div>
                            <div class="datas-text">12,000000 visitors every Month</div>
                        </li>
                    </ul>
                </div>


            </div>


            <!-- Today status end -->



            
                <div class="col-md-3">

                    <div class="social-box facebook">
                        <i class="fa fa-facebook"></i>
                        <ul>
                            <li>
                                <strong>256k</strong>
                                <span>friends</span>
                            </li>
                            <li>
                                <strong>359</strong>
                                <span>feeds</span>
                            </li>
                        </ul>
                    </div><!--/social-box-->
                </div>
                <div class="col-md-3">

                    <div class="social-box google-plus">
                        <i class="fa fa-google-plus"></i>
                        <ul>
                            <li>
                                <strong>962</strong>
                                <span>followers</span>
                            </li>
                            <li>
                                <strong>256</strong>
                                <span>circles</span>
                            </li>
                        </ul>
                    </div><!--/social-box-->

                </div><!--/col-->
                <div class="col-md-3">

                    <div class="social-box twitter">
                        <i class="fa fa-twitter"></i>
                        <ul>
                            <li>
                                <strong>1562k</strong>
                                <span>followers</span>
                            </li>
                            <li>
                                <strong>2562</strong>
                                <span>tweets</span>
                            </li>
                        </ul>
                    </div><!--/social-box-->

                </div><!--/col-->

            </div>



            
        </section>
    </section>
    <!--main content end-->
@stop

{{-- js--}}
@section('js')
    @include('ext.js')
@stop
