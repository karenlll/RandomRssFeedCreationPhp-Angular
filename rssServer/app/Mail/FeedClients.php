<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class FeedClients extends Mailable
{
    use Queueable, SerializesModels;
    
    public $feeds = [];

    public function __construct(Array $feeds)
    {
        $this->feeds=$feeds;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('mails.feedsUpdate');
    }
}
