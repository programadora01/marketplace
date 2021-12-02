<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\UserOrders;

class OrdersController extends Controller
{
    private $order;

    public function __construct(UserOrders $order)
    {
        $this->order = $order;
    }

    public function index()
    {
        $user = auth()->user();


        //dd($orders);

        if (!$user->store()->exists()) {

            flash('É preciso criar uma loja para ter pedidos!')->warning();
            return redirect()->route('admin.stores.index');
        }

        $orders = auth()->user()->store->orders()->paginate(10);

        return view('admin.orders.index', compact('orders'));
    }
}
