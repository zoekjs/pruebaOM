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
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $params = ExtractParams::getParams($request);
        $exist = Category::exist($params->ID);
        if(!$exist){
            $ID     = $params->ID;
            $name   = $params->name;
            Category::createCategory($ID, $name);
            $category = Category::all()->last();

            $data = ArrayResponse::arrayConstructor('created', '201', 'Se ha creado la categoría '.$category['name'].' con el ID: '.$category['ID']);
            return response()->json($data);
        }else{
            $data = ArrayResponse::arrayConstructor('400', 'Bad Request', 'La categoría que intenta crear ya existe en el sistema');
            return response()->json($data);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        //
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
