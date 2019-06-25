<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;


class FeedGeneration
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    protected $startDate;
    protected $endDate;
    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($startDate , $endDate)
    {
        $this->$startDate =  $startDate;
        $this->$endDate = $endDate;
    }

    public function  getStartDate(){
        return $this->startDate;
    }

    public function  getEndDate(){
        return $this->endDate;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new PrivateChannel('channel-name');
    }
}
