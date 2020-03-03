<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        $useradd = new \App\User();
        $useradd->name="Onuma Ritngam";
        $useradd->email="nuchnum65@gmail.com";
        $useradd->password=Hash::make('123456');
        $useradd->save();
    }
}
