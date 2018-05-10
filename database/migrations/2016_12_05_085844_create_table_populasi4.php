<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePopulasi4 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_populasi4', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('populasi');
            $table->integer('iterasi');
            $table->string('kdlokasi',9);
            $table->double('latitude',8,5);
            $table->double('longitude',8,5);
            $table->smallInteger('mt1');
            $table->smallInteger('mt2');
            $table->double('evaluasi',8,5);
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
        Schema::drop('bts_populasi4');
    }
}
