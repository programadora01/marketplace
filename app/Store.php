<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Sluggable\HasSlug;
use Spatie\Sluggable\SlugOptions;
use App\Notifications\StoreReceiveNewOrder;

class Store extends Model
{
    use Hasslug;

    protected $fillable = ['name', 'description', 'phone', 'mobile_phone', 'slug', 'logo'];

    /**
     * Get the options for generating the slug.
     */
    public function getSlugOptions(): SlugOptions
    {
        return SlugOptions::create()
            ->generateSlugsFrom('name')
            ->saveSlugsTo('slug');
    }

    public function user()
    {

        return $this->belongsTo(User::class);
    }

    public function products()
    {

        return $this->hasMany(Product::class);
    }

    public function orders()
    {

        return $this->belongsToMany(UserOrders::class, 'order_store', null, 'order_id');
    }

    public function notifyStoreOwners(array $storesId = [])
    {
        $stores = $this->whereIn('id', $storesId)->get();

        $stores->map(function ($store) {
            //return get_class($store->user); ->retorn uma string com o nome da classe
            return $store->user;
        })->each->notify(new StoreReceiveNewOrder());
    }
}
