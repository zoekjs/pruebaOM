<?php

namespace App\Http\Controllers;

use App\Item;
use Illuminate\Http\Request;
use App\Services\ExtractParams;
use App\Services\Exist;
use App\Services\ArrayResponse;
use App\Country;
use App\Category;
use App\Currency;

class ItemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        // Extraer valores del JSON
        $params = ExtractParams::getParams($request);
        
        $item = new Item();
      
        // Comprobar si el item que se desea crear ya existe en la BD
        $exist = $item->exist($params->title);
        try{
            // Si no existe el item, se procede a validar el país
            if(!$exist){
                $existCountry = Country::exist($params->country);
                // Si existe el país en la BD, se procede a validar la categoría 
                if($existCountry){
                    $existCategory = Category::exist($params->category_id);
                    // Si existe la categoría, se valida el tipo de moneda
                    if($existCategory){
                        // Si existe el tipo de moneda, se crea un nuevo registro en la BD
                        $existCurrency = Currency::exist($params->currency);
                        if($existCurrency){
                            $title      = $params->title;
                            $category   = $params->category_id;
                            $price      = $params->price;
                            $currency   = $params->currency;
                            $country    = $params->country;
                            
                            // Pasa los argumentos a la función createItem del modelo para guardar el registro
                            $item->createItem($title, $category, $price, $currency, $country);
                            //Se obtiene el último Item guardado para retornar el ID al usuario
                            $datos = Item::all()->last();
                            // Crear array para la respuesta
                            $data = ArrayResponse::arrayConstructor('created', '201', 'Item agregado exitosamente con el id '.$datos['ID']);
                            // Enviar respuesta en formato JSON
                            return response()->json($data);
                        }else{
                            $data = ArrayResponse::arrayConstructor('not found', '404', 'El tipo de moneda ingresada no existe en nuestros registros :(');
                            // Enviar respuesta en formato JSON
                            return response()->json($data);
                        }
                    }else{
                        $data = ArrayResponse::arrayConstructor('not found', '404', 'La categoría ingresada no existe en nuestros registros :(');
                        // Enviar respuesta en formato JSON
                        return response()->json($data);
                    }
                }else{
                    $data = ArrayResponse::arrayConstructor('not found', '404', 'El país ingresado no existe en nuestros registros :(');
                    // Enviar respuesta en formato JSON
                    return response()->json($data);
                }
            }else{
                $data = $data = ArrayResponse::arrayConstructor('Bad Request', '400', 'El item ya existe en el sistema :(');
                return response()->json($data, $data['code']);
            }
        }catch(Exception $e){
            $data = ArrayResponse::arrayConstructor('Unprocessable Entity', '422', 'datos ingresados invalidos');
            return response()->json($data, $data['code']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Item  $item
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // Se verifica que el item exista en la BD
        $exist = Item::existByID($id);
        // Si existe se trae el item y se envía como JSON
        if($exist){
            $item = Item::searchItem($id);
            return response()->json($item);
        }else{
            $data = ArrayResponse::arrayConstructor('404', 'not-found', 'El item que está buscando, no existe en nuestros registros :(');
            return response()->json($data);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Item  $item
     * @return \Illuminate\Http\Response
     */
    public function edit(Item $item)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Item  $item
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Item $item)
    {
        // Extraer valores del JSON
        $params = ExtractParams::getParams($request);

        $ID         = $item->ID;
        $title      = $request->title;
        $price      = $request->price;
        $currency   = $request->currency;
        $country    = $request->country;

        $existCurrency = Currency::exist($currency);
        // Si existe el tipo de moneda ingresado, se valida el país
        if($existCurrency){
            $existCountry = Country::exist($country);
            // Si existe el país en la BD, se modifica el registro
            if($existCountry){
                // Modificar el registro
                Item::updateItem($ID, $title, $price, $currency, $country);
                $data = ArrayResponse::arrayConstructor('200', 'updated', 'El item fue modificado exitosamente :)');
                return response()->json($data);
            }else{
                $data = ArrayResponse::arrayConstructor('404', 'not-found', 'El país ingresado no existe en nuestros registros :(');
                return response()->json($data);
            }
        }else{
            $data = ArrayResponse::arrayConstructor('404', 'not-found', 'El tipo de moneda ingresado no es válido :(');
            return response()->json($data);
        }
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Se busca el item por su ID
        $exist = Item::existByID($id);
        // Si existe, se elimina
        if($exist){
            Item::deleteItem($id);
            $data = ArrayResponse::arrayConstructor('200', 'deleted', 'El item fue eliminado correctamente :)');
            return response()->json($data);
        }else{
            $data = ArrayResponse::arrayConstructor('404', 'not-found', 'El item que desea eliminar no se encuentra en nuestros registros :(');
            return response()->json($data);
        }
    }
}
