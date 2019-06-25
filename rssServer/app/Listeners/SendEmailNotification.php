<?php

namespace App\Listeners;

use App\Events\FeedGeneration;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

use DB;
use Carbon\Carbon;
use App\User;
use App\User_Topic;
use Mail;
use App\Mail\FeedClients;

class SendEmailNotification
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  FeedGeneration  $event
     * @return void
     */
    public function handle(FeedGeneration $event)
    {
        $feeds = DB::table('feeds')
                    ->where('updated_at', '>=', date($event->getStartDate()===null?Carbon::now():$event->getStartDate()))
                    ->get();

        $users = User::all();

        foreach($users as $user){
            $user_topics = DB::table('user__topics')
                    ->where('iduser', '=', $user->email)
                    ->get();
            $interestingFeeds = [];
            $idTopics = [];
            foreach($user_topics as $topic){
                array_push($idTopics, $topic->idtopic);
            }

            foreach($feeds as $feed){
                if (in_array($feed->topic, $idTopics)) {
                    array_push($interestingFeeds, $feed);
                }
            }

            if(count($interestingFeeds)>0){
                Mail::to($user)->send(new FeedClients($interestingFeeds));
                }

        }
        
    }
}
