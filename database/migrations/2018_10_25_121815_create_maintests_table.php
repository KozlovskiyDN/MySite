<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMaintestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('maintests', function (Blueprint $table) {
            $table->increments('id');
			$table->string('name')->nullable();
			$table->text('body')->nullable();
			$table->string('url');
			$table->string('type')->nullable();
			$table->enum('lang',["ru","en"])->default("ru");
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
        Schema::dropIfExists('maintests');
    }
}
