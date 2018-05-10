<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableKonfigurasi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_konfigurasi', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('tahun');
            $table->char('kdkec',5);
            $table->integer('jumlah');
            $table->integer('kepadatan');
            $table->integer('site');
            $table->integer('prakiraan');
            $table->float('latitude');
            $table->float('longitude');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('bts_konfigurasi');
    }
}
