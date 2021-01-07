<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Services\Exist;

class Currency extends Model
{
    protected $table = 'currency';
    protected $primaryKey = 'ID';

    public function items(){
        return $this->hasMany(\App\Item::class);
    }

    // Ver si el tipo de moneda existe en la BD
    static public function exist($currency){
        $count = Currency::where('shortname', $currency)->orWhere('longname', $currency)->count();
        return Exist::exist($count);
    }
}
