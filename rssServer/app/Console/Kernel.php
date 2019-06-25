<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

use DigitalDrifter\LaravelChromeLogger\LaravelChromeLogger;
//use Feeds;
use DB;
use Artisan;
use Carbon\Carbon;
use App\Events\FeedGeneration;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        //
    ];

    
    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        $schedule->call(function () {

            $startDate = Carbon::now();

            Artisan::call('db:seed');

            $endDate = Carbon::now();

            event(new FeedGeneration($startDate, $endDate));
            
        })->everyFiveMinutes();

        $schedule -> call (function(){
/*  DB::insert('INSERT INTO rssfeeds.feeds (title, timestamp, description, autor, topic, link) 
                    VALUES ( ?, ?, ?, ?, ?);', [ 'Prueba Schedule', 'now()', 'Prueba Schedule', 'Prueba Schedule', '22', 'Prueba Schedule']);

            $results = DB::select('SELECT url FROM rssfeeds.news_rss_sources;');

            $feed = Feeds::make($results,5, true);
            $rssItems = $feed->get_items();

           foreach ($rssItems as $item) {

                $id =$item->get_id();
                $title=$item->get_title();
                $description=$item->get_description() === null ? "Null summary": $item->get_description();
                $updated_at=Carbon::parse($item->get_updated_date());
                $link=$item->get_permalink();
                $author=$item->get_author();

                $category = DB::select('SELECT idtopics FROM rssfeeds.topics WHERE LOWER(description) = LOWER(?) LIMIT 1',[$item->get_category()]);

                DB::insert('INSERT INTO rssfeeds.feeds (idfeed, title, timestamp, description, autor, topic, link) 
                    VALUES (?, ?, ?, ?, ?, ?);', [$id, $title, $updated_at, $description, $author, 
                        $reset($category)!==null? $reset($category): 22, $link]);
            }
*/
        })->everyFiveMinutes();
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
