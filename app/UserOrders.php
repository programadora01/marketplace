<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class UserOrders extends Model
{
    protected $fillable = ['reference', 'pagseguro_status', 'pagseguro_code', 'store_id', 'items'];

    public function user()
    {

        return $this->belongsTo(User::class);
    }

    public function store()
    {

        return $this->belongsTo(Store::class);
    }

    public function stores()
    {
        return $this->belongsToMany(Store::class, 'order_store', 'order_id');
    }
}
