<?php
namespace App\Services;

final class ArrayResponse
{
    // Crear array para la respuesta posteriormente convertida a JSON
    static public function arrayConstructor($status, $code, $message){
        return Array(
            'status'    => $status,
            'code'      => $code,
            'message'   => $message
        );
    }
}