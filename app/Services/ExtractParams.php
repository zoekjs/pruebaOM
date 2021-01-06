<?php
namespace App\Services;

class ExtractParams
{

    static public function getParams($request){
        if($request->input('json', null)){
            $json = $request->input('json', null);
            return $params = json_decode($request);
        }else{
            return $params = json_decode(json_encode($request->all()));
        }
    }

}