<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePathloss extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_pathloss', function (Blueprint $table) {
            $table->increments('id');
            $table->string('idkota',4);
            $table->string('idkec',4);
            $table->float('puplink',8,5);
            $table->float('pdownlink',8,5);
            $table->float('maplu',8,5);
            $table->float('mapld',8,5);
            $table->smallInteger('layaku');
            $table->smallInteger('layakd');
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
        Schema::drop('bts_pathloss');
    }
}
