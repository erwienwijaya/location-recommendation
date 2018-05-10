<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableOkumura extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_okumura', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('fuplink')->default(0);
            $table->integer('fdownlink')->defaut(0);
            $table->integer('hms')->default(0);
            $table->integer('hbsurban')->default(0);
            $table->integer('hbssurban')->default(0);
            $table->integer('hbsrural')->default(0);
            $table->float('auplink')->default(0);
            $table->float('adownlink')->default(0);
            $table->float('maplu')->default(0);
            $table->float('mapld')->default(0);
            $table->float('cm')->default(0);
            $table->float('thurban')->default(0);
            $table->float('thsurban')->default(0);
            $table->float('thrural')->default(0);
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
        Schema::drop('bts_okumura');
    }
}
