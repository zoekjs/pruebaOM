<?php

namespace Tests\Feature\Http\Controllers;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ItemControllerTest extends TestCase
{
    // use RefreshDatabase;
    /** @test */
    public function regiter_a_new_item()
    {
        // Se manda una petición POST al endpoint api/items con un JSON para ingresar un nuevo item
        $response = $this->json('POST', 'api/item', [
            'title'         => 'test_item_controller',
            'price'         => '4444',
            'currency'      => 'USD',
            'country'       => 'US',
            'category_id'   => '1234',
        ]);

        /* Para que la prueba sea exitosa se espera un codigo 200 y que la respuesta de la API incluya un status
        created con code 201, además de validar que en la base de datos se encuentren algunos valores pasados en el JSON*/
        $response->assertStatus(201)
                ->assertJson([
                    'status' => 'created',
                    'code' => '201',    
                ]);
        $this->assertDatabaseHas('item', [
            'title'         => 'test_item_controller',
            'category_id'   => '1234',
            'price'         => '4444',
        ]);
        
    }

    /** @test */
    public function register_error_if_item_exist(){
        // Se manda una petición POST al endpoint api/items con un JSON para ingresar el mismo item de la prueba anterior
        $response = $this->json('POST', 'api/item', [
            'title'         => 'test_item_controller',
            'price'         => '4444',
            'currency'      => 'USD',
            'country'       => 'US',
            'category_id'   => '1234',
        ]);

        // Para que la prueba sea exitosa debemos obtener un codigo 400 (Bad request) y la respues ta de la API debe coincidir
        $response->assertStatus(400)
                ->assertJson([
                    'status'    => 'Bad Request',
                    'code'      => '400',
                ]);
    }

    /** @test */
    public function register_error_if_category_doesnt_exist(){
        // Se manda una petición POST al endpoint api/items con un JSON para ingresar un registro con una categoría que no existe
        $response = $this->json('POST', 'api/item', [
            'title'         => 'test_item_controller2',
            'price'         => '4444',
            'currency'      => 'USD',
            'country'       => 'US',
            'category_id'   => '9999',
        ]);

        // Para que la prueba sea exitosa esperamos obtener un codigo 404 y la respuesta JSON 
        // de la API debe contener un code 404 debido a que la categoría no existe.
        $response->assertStatus(404)
                ->assertJson([
                    'status'    => 'not found',
                    'code'      => '404',
                ]);
    }

    /** @test */
    public function register_error_if_country_doesnt_exist(){
        // Se manda una petición POST al endpoint api/items con un JSON para ingresar un registro con un país que no existe
        $response = $this->json('POST', 'api/item', [
            'title'         => 'test_item_controller2',
            'price'         => '4444',
            'currency'      => 'USD',
            'country'       => 'AABBJ',
            'category_id'   => '9999',
        ]);
        
        // Para que la prueba sea exitosa esperamos obtener un codigo 404 y la respuesta JSON 
        // de la API debe contener un code 404 debido a que el país no existe.
        $response->assertStatus(404)
                ->assertJson([
                    'status'    => 'not found',
                    'code'      => '404'
                ]);

    }
    
    /** @test */
    public function register_error_if_currency_doesnt_exist(){
        // Se manda una petición POST al endpoint api/items con un JSON para ingresar un registro con un tipo de moneda que no existe
        $response = $this->json('POST', 'api/item', [
            'title'         => 'test_item_controller2',
            'price'         => '4444',
            'currency'      => 'USDXS',
            'country'       => 'US',
            'category_id'   => '9999',
        ]);

        // Para que la prueba sea exitosa esperamos obtener un codigo 404 y la respuesta JSON 
        // de la API debe contener un code 404 debido a que el tipo de moneda no existe.
        $response->assertStatus(404)
                ->assertJson([
                    'status'    => 'not found',
                    'code'      => '404'
                ]);
    }

}
