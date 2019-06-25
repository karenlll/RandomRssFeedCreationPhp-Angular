<?php

namespace App\Http\Controllers;

use App\FeedRss;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Artisan;
use App\Events\FeedGeneration;
use DB;

class FeedRssController extends Controller
{
    public function show(Request $request, FeedRss $feedRss)
    {
        return $feedRss;
    }

    public function testRssFeeds ()
    {
        $startDate = Carbon::now();

        Artisan::call('db:seed');

        $endDate = Carbon::now();

        event(new FeedGeneration($startDate, $endDate));
    }

    public function getLastFeeds()
    {
        return DB::table('feeds')
        ->orderBy('updated_at', 'desc')->take(5)->get();
    }
}
