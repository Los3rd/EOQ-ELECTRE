<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('eoq_calculations', function (Blueprint $table) {
            $table->foreignId('raw_material_id')
                ->nullable()
                ->after('id')
                ->constrained('raw_materials')
                ->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Tambahkan pengecekan: hanya dropForeign kalau bukan SQLite
        if (Schema::getConnection()->getDriverName() !== 'sqlite') {
            Schema::table('eoq_calculations', function (Blueprint $table) {
                $table->dropForeign(['raw_material_id']);
            });
        }

        // Drop kolom tetap dijalankan (didukung di SQLite)
        Schema::table('eoq_calculations', function (Blueprint $table) {
            $table->dropColumn('raw_material_id');
        });
    }
};
