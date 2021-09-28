<?php

namespace App\Http\Controllers;

use Illuminate\Notifications\Notification;

class MailTestController extends Notification
{
    public function sms()
    {
        $basic  = new \Vonage\Client\Credentials\Basic(env("NEXMO_KEY"), env("NEXMO_SECRET"));

        $client = new \Vonage\Client($basic);

        $response = $client->sms()->send(
            new \Vonage\SMS\Message\SMS("5548991026248", "NIKE", 'A text message sent using the Nexmo SMS API')
        );

        $message = $response->current();

        if ($message->getStatus() == 0) {
            echo "The message was sent successfully\n";
        } else {
            echo "The message failed with status: " . $message->getStatus() . "\n";
        }
    }
}
