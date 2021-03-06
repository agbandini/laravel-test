<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Models\Album;
use App\Models\Photo;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('set foreign_key_checks = 0');
        User::truncate();
        Album::truncate();
        Photo::truncate();
        $this->call(SeedUserTable::class);
        $this->call(SeedAlbumTable::class);
        $this->call(SeedPhotoTable::class);
    }
}
