<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = App\User::create([
            'name' => 'Md.Rashedul Islam',
            'email' => 'lelin.rashed784@gmail.com',
            'password' => bcrypt('password'),
            'admin' => 1,
        ]);

        App\Profile::create([
            'user_id' => $user->id,
            'avatar' => 'uploads/avatars/1.jpg',
            'about' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi architecto asperiores debitis distinctio dolor dolorem est, harum ipsa labore laboriosam mollitia neque odio odit pariatur repellendus tenetur voluptates. Nesciunt, rerum.',
            'facebook' => 'facebook.com',
            'youtube' => 'youtube.com',
        ]);

    }
}
