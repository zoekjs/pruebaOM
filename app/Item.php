<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Services\Exist;


class Item extends Model
{
    protected $table = 'item';
    protected $primaryKey = 'ID';

    // Relaciones uno a muchos inversa (pertenece a) - necesario para utilizar Eloquent
    public function category(){
        return $this->belongsTo(\App\Category::class);
    }

    public function country(){
        return $this->belongsTo(\App\Country::class);
    }

    public function currency(){
        return $this->belongsTo(\App\Currency::class);
    }


    //Obtener ID currency por short o longname
    static public function getCurrencyID($currency){
        return Currency::select('ID')->where('longname', $currency)->orWhere('shortname', $currency)->firstOrFail();
    }

    // Obtener ID de categoria por el nombre
    public function getCategoryID($category){
        return Category::select('ID')->where('name', $category)->firstOrFail();
    }

    // Obtener ID del país por el nombre
    static public function getCountryID($country){
        return Country::select('ID')->where('longname', $country)->orWhere('shortname', $country)->firstOrFail();
    }

    // Crear un nuevo item en la BD
    public function createItem($title, $category, $price, $currency, $country){
        $item = new Item;

        $currencyID = Item::getCurrencyID($currency);
        $countryID  = Item::getCountryID($country);

        $item->title        = $title;
        $item->category_id  = $category;
        $item->price        = $price;
        $item->currency_id  = $currencyID->ID;
        $item->country_id   = $countryID->ID;

        $item->save();
    }

    // Comprobar si un item existe en la BD por title
    public function exist($title){
        $count = Item::where('title', $title)->count();
        return Exist::exist($count);
     }

    //  Comprobar si un item existe por su ID
    static public function existByID($id){
        $count = Item::where('ID', $id)->count();
        return Exist::exist($count);
    }

    // Buscar un item por su id en la BD
    static public function searchItem($id){
        return \DB::table('item as i')
                ->join('category as c', 'i.category_id', '=', 'c.ID')
                ->join('country as co', 'i.country_id', '=', 'co.ID')
                ->join('currency as cu', 'i.currency_id', '=', 'cu.ID')
                ->select('i.title', 'i.price', 'cu.shortname as currency', 'co.shortname as country', 'i.category_id')
                ->where('i.ID', '=', $id)
                ->get();

    }

    // Modificar un item en la BD
    static public function updateItem($ID, $title, $price, $currency, $country){
        //buscar item por id
        $item = Item::where('ID', $ID)->firstOrFail();

        $currencyID = Item::getCurrencyID($currency);
        $countryID  = Item::getCountryID($country);

        $item->title = $title;
        $item->price = $price;
        $item->currency_id = $currencyID->ID;
        $item->country_id = $countryID->ID;

        $item->save();
    }

    // Eliminar un item en la BD
    static public function deleteItem($ID){
        $item = Item::where('ID', $ID)->firstOrFail();
        $item->delete();
    }






}
