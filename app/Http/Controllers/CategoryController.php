<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use App\Services\ArrayResponse;
use App\Services\Exist;
use App\Services\ExtractParams;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::getCategories();
        $data = [];
        foreach ($categories as $category){
            $valores = array(
                    'ID'    => $category->ID,
                    'name'  => $category->name,
            );
            array_push($data, $valores);
        }

        return response()->json($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try{
            $params = ExtractParams::getParams($request);
            $exist = Category::exist($params->ID);
            if(!$exist){
                $isANumber = is_numeric($params->ID);
                if($isANumber){
                    $ID     = $params->ID;
                    $name   = $params->name;
                    Category::createCategory($ID, $name);
                    $category = Category::all()->last();
    
                    $data = ArrayResponse::arrayConstructor('created', '201', 'Se ha creado la categoría '.$category['name'].' con el ID: '.$category['ID']);
                    return response()->json($data, $data['code']);
                }else{
                    $data = ArrayResponse::arrayConstructor('Bad Request', '400', 'El id debe ser un valor númerico, intente nuevamente');
                    return response()->json($data, $data['code']);
                }
                
            }else{
                $data = ArrayResponse::arrayConstructor('Bad Request', '400', 'La categoría que intenta crear ya existe en el sistema');
                return response()->json($data, $data['code']);
            }
        }catch(\Exception $e){
            $data = ArrayResponse::arrayConstructor('Bad Request', '400', 'Los datos ingresados son inválidos, intente nuevamente');
            return response()->json($data, $data['code']);
        }

    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        //
    }
}
