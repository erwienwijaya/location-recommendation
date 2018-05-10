<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKecamatanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_kecamatan', function (Blueprint $table) {
            $table->increments('id');
            $table->char('kdkec',5);
            $table->char('kdkota',4);
            $table->char('kdkat',2);
            $table->char('kecamatan',40);
            $table->double('luas');
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
        Schema::drop('bts_kecamatan');
    }
}
