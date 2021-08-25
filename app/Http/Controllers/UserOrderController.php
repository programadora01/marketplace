<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserOrderController extends Controller
{
    public function index()
    {
        $userOrders = auth()->user()->orders()->paginate(10);
        //dd($userOrders);
        return view('user-orders', compact('userOrders'));
    }
}
