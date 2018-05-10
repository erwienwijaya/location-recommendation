<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableDowntilt extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bts_downtilt', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('populasi');
            $table->string('kdlokasi1',9);
            $table->string('kdlokasi2',9);
            $table->double('lat1',8,5);
            $table->double('long1',8,5);
            $table->double('lat2',8,5);
            $table->double('long2',8,5);
            $table->double('d1',8,5);
            $table->double('d2',8,5);
            $table->double('dt',8,5);
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
        Schema::drop('bts_downtilt');
    }
}
