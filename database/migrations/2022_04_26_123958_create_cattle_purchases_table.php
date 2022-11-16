<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCattlePurchasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cattle_purchases', function (Blueprint $table) {
            $table->id();
            $table->decimal('total_price');
            $table->foreignId('farmer_id')->constrained()->onDelete('cascade');;
            $table->foreignId('herd_id')->constrained()->onDelete('cascade');;
            $table->integer('total_calves');
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
        Schema::dropIfExists('cattle_purchases');
    }
}
