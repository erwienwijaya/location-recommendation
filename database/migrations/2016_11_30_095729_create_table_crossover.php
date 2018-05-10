<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableCrossover extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_crossover', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('populasi');
            $table->integer('iterasi');
            $table->string('kdlokasi',9);
            $table->double('evaluasi',8,5);
            $table->double('r',8,5);
            $table->smallInteger('co');
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
        Schema::drop('bts_crossover');
    }
}
