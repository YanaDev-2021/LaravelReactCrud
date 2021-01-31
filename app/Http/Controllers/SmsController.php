<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Nexmo\Laravel\Facade\Nexmo;

class SmsController extends Controller
{   
    public function sendMessage(){
        Nexmo::message()->send([
            'to'   => '09972159030',
            'from' => '09972159030',
            'text' => 'Hi there, this is a test message.'
        ]);

        echo "Message sent Successfully";
    }
}
