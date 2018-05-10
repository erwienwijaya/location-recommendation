<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('index');
});

Route::resource('kota','KotaController');
Route::get('kota.data','KotaController@anyData');
Route::resource('kategori','KategoriController');
Route::get('kategori.data','KategoriController@anyData');
Route::resource('kecamatan','KecamatanController');
Route::get('kec.data','KecamatanController@anyData');
Route::resource('geolocation','LokasiController');
Route::get('lokasi.data','LokasiController@anyData');
Route::get('/getkec/{id}','LokasiController@getkecamatan');
Route::resource('/konfigurasi','KonfigurasiController');
Route::get('/konfigurasi.data','KonfigurasiController@anyData');
Route::resource('/prakiraan','PrakiraanController');
Route::get('/getkota/{tahun}','PrakiraanController@getkota');
Route::get('/getdata/{tahun}/{kota}','PrakiraanController@getdata');
Route::get('/getdataprakiraan/{tahun}/{kota}/{prakiraan}','PrakiraanController@getdataprakiraan');
Route::get('/getcekprosen/{tahun}/{kota}','PrakiraanController@getCekProsen');
Route::post('/simpan','PrakiraanController@postsave');
Route::get('/detil','PrakiraanController@getdetilkonfig');
Route::get('/master','PrakiraanController@getmasterkonfig');
Route::resource('/klasifikasi','KlasifikasiController');
Route::get('/klasifikasi.data','KlasifikasiController@getAnyData');
Route::post('/klasifikasi.simpan','KlasifikasiController@postsave');
Route::resource('/trafficobq','TrafficController');
Route::get('/trafficobq.data','TrafficController@getAnyData');
Route::get('/trafficobq.detil/{kategori}','TrafficController@getDetail');
Route::resource('/kapasitas','KapasitasController');
Route::get('/kapasitas.data','KapasitasController@getAnyData');
Route::post('/trafficobq.save','TrafficController@postSave');
Route::resource('/datacell','CellController');
Route::get('/datacell.getmodel/{model}','CellController@getModel');
Route::get('/datacell.getsavekonfig','CellController@getSaveKonfig');
Route::post('/datacell.postkonfig','CellController@postKonfig');
Route::get('/datacell.getcell','CellController@getCell');
Route::resource('/okumura','OkumuraController');
Route::get('/okumura.data','OkumuraController@getOkumura');
Route::post('/okumura.simpan','OkumuraController@postOkumura');
Route::get('/pathloss','PathlossController@index');
Route::get('/pathloss.data/{kota}','PathlossController@anyData');
Route::post('/pathloss.postpl','PathlossController@postPathloss');
Route::resource('/laporan','LaporanController');
Route::get('/laporan.data','LaporanController@anyData');
Route::resource('/setting','SettingController');
Route::get('/setting.data','SettingController@anyData');
Route::post('/setting.simpan','SettingController@postSetting');
Route::get('/populasi','PopulasiController@index');
Route::get('/populasi.data','PopulasiController@anyData');
Route::post('/populasi.generate','PopulasiController@generatePop');
Route::get('/populasi.filter/{kec}','PopulasiController@filterPop');
Route::get('/seleksi','SeleksiController@index');
Route::get('/seleksi.data','SeleksiController@anyData');
Route::get('/seleksi.filter/{kec}','SeleksiController@filterSel');
Route::get('/seleksi.data2','SeleksiController@populasiBaru');
Route::get('/seleksi.filter2/{kec}','SeleksiController@filterSel2');
Route::get('/crossover','CrossoverController@index');
Route::get('/crossover.data','CrossoverController@anyData');
Route::get('/crossover.filter/{kec}','CrossoverController@filterCo');
Route::get('/crossover.data2','CrossoverController@populasiBaru');
Route::get('/crossover.filter2/{kec}','CrossoverController@filterco2');
Route::get('/mutasi','MutasiController@index');
Route::get('/mutasi.data','MutasiController@anyData');
Route::get('/mutasi.filter/{kec}','MutasiController@filterMt');
Route::get('/mutasi.data2','MutasiController@populasiBaru');
Route::get('/mutasi.filter2/{kec}','MutasiController@filterMt2');
Route::get('/downtilt','DowntiltController@index');
Route::get('/downtilt.data','DowntiltController@anyData');
Route::get('/downtilt.filter/{kec}','DowntiltController@filterDt');
Route::post('/downtilt.generate','DowntiltController@generateDt');
Route::get('/peta','PetaController@index');
Route::get('/peta.data','PetaController@anyData');
Route::get('/peta.filter/{kec}','PetaController@filterMap');
Route::get('/peta.filter2/{kec}','PetaController@filterMap2');
Route::get('/detil/{kec}','PetaController@getDetail');