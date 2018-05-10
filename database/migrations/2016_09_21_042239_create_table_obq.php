<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableObq extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_obq', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('nomor');
            $table->string('kdkec',4);
            $table->smallInteger('prediksi');
            $table->integer('kepadatan');
            $table->integer('obq');
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
        Schema::drop('bts_obq');
    }
}
