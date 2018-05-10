<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableKlasifikasi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_klasifikasi', function (Blueprint $table) {
            $table->increments('id');
            $table->string('kategori',50);
            $table->string('layanan',100);
            $table->float('voice');
            $table->float('video');
            $table->float('streaming');
            $table->float('data');
            $table->float('multimedia');
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
        Schema::drop('bts_klasifikasi');
    }
}
