<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Topic;

use DigitalDrifter\LaravelChromeLogger\LaravelChromeLogger;
use FeedReader;
use DB;
use Artisan;
use Carbon\Carbon;

class TopicController extends Controller
{
     public function show()
    {
    	/*DB::insert('INSERT INTO rssfeeds.feeds (idfeed, title, timestamp, description, autor, topic, link) 
                    VALUES (?, ?, ?, ?, ?, ?,?);', [ 'Prueba Schedule', 'Prueba Schedule', Carbon::now() , 'Prueba Schedule', 'Prueba Schedule', '22', 'Prueba Schedule', 'Prueba Schedule' ]);
*/
      /*      $results =  DB::select('SELECT url FROM rssfeeds.news_rss_sources;');
            $urlArray = [];
            foreach ($results as $result) {
                array_push($urlArray, $result->url);
            }

            $feed = FeedReader::read($urlArray[0]);
            echo "Feeds: " . $feed;
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
            }*/
            
        return Topic::all();
    }
}
