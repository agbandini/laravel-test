<?php
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use App\User;

class SeedUserTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*
        $sql = "insert into users (name, email, password, created_at) values (:name, :email, :password, :created_at);";
        for ($i=0; $i<31; $i++){
            DB::statement($sql, [
                'name' => 'gmk'.$i,
                'email' => $i.'gmk@studioartifex.it',
                'password' => bcrypt('1q2w3e4r'),
                'created_at' => Carbon::now() //senno date('Y-m-d H:i:s'); carbon è una classe di laravel per le date
            ]);
        }
        */
       // DB::statement('set foreign_key_checks = 0');
       // User::truncate();
        $users = factory(App\User::class, 30)->create();
    }
}
