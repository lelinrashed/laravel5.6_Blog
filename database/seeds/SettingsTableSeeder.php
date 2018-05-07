<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\Setting::create([
            'site_name' => 'Laravel\'s Blog',
            'address' => 'Dhaka, Bangladesh',
            'contact_number' => '01935043135',
            'contact_email' => 'lelin.rashed784@gmail.com'
        ]);
    }
}
