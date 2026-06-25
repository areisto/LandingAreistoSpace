<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name_ar')->nullable();
            $table->string('job_title')->nullable();
            $table->text('content')->nullable();
            $table->string('image')->nullable();
            $table->timestamps();
            $table->string('name_en')->nullable();
        });

        Schema::create('contacts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->string('email')->nullable();
            $table->text('message')->nullable();
            $table->timestamps();
        });

        Schema::create('newsletters', function (Blueprint $table) {
            $table->increments('id');
            $table->string('email')->nullable();
            $table->timestamps();
        });

        Schema::create('privacy_policies', function (Blueprint $table) {
            $table->increments('id');
            $table->text('body')->nullable();
            $table->timestamps();
        });

        Schema::create('invoices', function (Blueprint $table) {
            $table->increments('id');
            $table->string('invoice_id')->nullable();
            $table->string('plan')->nullable();
            $table->integer('quantity')->nullable();
            $table->mediumText('total')->nullable();
            $table->string('status')->nullable();
            $table->timestamps();
        });

        Schema::create('plans', function (Blueprint $table) {
            $table->increments('id');
            $table->string('type')->nullable();
            $table->integer('price')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('plans');
        Schema::dropIfExists('invoices');
        Schema::dropIfExists('privacy_policies');
        Schema::dropIfExists('newsletters');
        Schema::dropIfExists('contacts');
        Schema::dropIfExists('clients');
    }
};
