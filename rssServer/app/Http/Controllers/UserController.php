<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\User_Topic;

class UserController extends Controller
{
	public function subscribe(Request $request)
	{
		$user = new User;
		$user->email = $request->email;
		$user->status = 2;
		$user->save();

		foreach( $request->topics as $topic )
		{
			$user_topic = new User_Topic;
			$user_topic->iduser = $request->email;
			$user_topic->idtopic = $topic;
			$user_topic->save();
		}
	}
	
	public function unsubscribe(Request $request)
	{
		$user_topic = User_Topic::where('iduser', '=', $request->email);
		$user = User::where('email', '=', $request->email);

		$user_topic -> delete();
		$user->delete();
	}
}
