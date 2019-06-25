<?php

use Illuminate\Database\Seeder;

class FeedRssSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory('App\FeedRss', 5)->create();
    }
}
