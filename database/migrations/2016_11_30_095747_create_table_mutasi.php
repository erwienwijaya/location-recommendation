<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableMutasi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_mutasi', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('populasi');
            $table->integer('iterasi');
            $table->string('kdlokasi',9);
            $table->double('evaluasi',8,5);
            $table->double('r1',8,5);
            $table->smallInteger('mt1');
            $table->double('r2',8,5);
            $table->smallInteger('mt2');
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
        Schema::drop('bts_mutasi');
    }
}
