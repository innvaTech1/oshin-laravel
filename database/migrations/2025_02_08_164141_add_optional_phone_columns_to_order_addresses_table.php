<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('order_addresses', function (Blueprint $table) {
            $table->string('billing_phone_alternative')->nullable()->after('billing_phone');
            $table->string('shipping_phone_alternative')->nullable()->after('shipping_phone');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('order_addresses', function (Blueprint $table) {
            $table->dropColumn('billing_phone_alternative');
            $table->dropColumn('shipping_phone_alternative');
        });
    }
};
