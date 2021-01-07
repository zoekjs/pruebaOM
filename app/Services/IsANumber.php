<?php
namespace App\Services;

final class isANumber
{
    // Verificar si es un string o un número
    static public function isANumber($x){
        try{
            $numero = (int)$x;
            return true;
        }catch(Exception $e){
            return false;
        }
    }
}