<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Services\Exist;

class Category extends Model
{
    protected $table = 'category';
    protected $primaryKey = 'ID';

    public function items(){
        return $this->hasMany(\App\Item::class);
    }

    // Ver si la categoría existe en la BD
    static public function exist($category){
        $count = Category::where('ID', $category)->count();
        return Exist::exist($count);
    }
    
    //Crear una nueva categoría
    static public function createCategory($id, $name){
        $category = new Category();

        $category->id = $id;
        $category->name   = $name;

        $category->save();
    }

    // Obtener todas las categorías
    static public function getCategories(){
        return Category::all();
    }

}
