<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBtsPrakiraan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_prakiraan', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('tahun',4);
            $table->string('kdkota',4);
            $table->string('kdkec',4);
            $table->integer('potensial');
            $table->integer('prediksi');
            $table->float('asumsi',2,0);
            $table->integer('prakiraan');
            $table->integer('pelanggan');
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
        Schema::drop('bts_prakiraan');
    }
}
