<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableSeleksi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_seleksi', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('populasi');
            $table->integer('iterasi');
            $table->string('kdlokasi',9);
            $table->double('evaluasi',8,5);
            $table->double('sum1',8,5);
            $table->double('mod1',8,5);
            $table->double('sum2',8,5);
            $table->double('mod2',8,5);
            $table->double('r',8,5);
            $table->integer('seleksi');
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
        Schema::drop('bts_seleksi');
    }
}
