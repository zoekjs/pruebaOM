<?php
namespace App\Services;

final class Exist
{
    static public function exist($count){
        if($count > 0){
            return true;
        }else{
            return false;
        }
    }
}