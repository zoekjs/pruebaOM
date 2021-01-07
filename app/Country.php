<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Services\Exist;

class Country extends Model
{
    protected $table = 'country';
    protected $primaryKey = 'ID';

    public function items(){
        return $this->hasMany(\App\Item::class);
    }

    // Ver si el país existe en la BD
    static public function exist($country){
        $count = Country::select('ID')->where('longname', $country)->orWhere('shortname', $country)->count();
        return Exist::exist($count);
    }
}
