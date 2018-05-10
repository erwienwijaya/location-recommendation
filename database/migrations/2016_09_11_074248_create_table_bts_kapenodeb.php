<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBtsKapenodeb extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_kapenodeb', function (Blueprint $table) {
            $table->increments('id');
            $table->string('model',10);
            $table->float('bw',8,2);
            $table->float('qpsk',8,2);
            $table->float('qam16',8,2);
            $table->float('qam64',8,2);
            $table->tinyInteger('konfig',1);
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
        Schema::drop('bts_kapenodeb');
    }
}
