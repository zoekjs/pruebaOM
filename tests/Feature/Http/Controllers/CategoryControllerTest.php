<?php

namespace Tests\Feature\Http\Controllers;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class CategoryControllerTest extends TestCase
{

    /** @test */
    public function register_a_new_category()
    {
        $response = $this->json('POST', 'api/category', [
            "ID"    => '1',
            "name"  => "category_test"
        ]);

        $response->assertStatus(200)
                ->assertJson([
                    'status'    => 'created',
                    'code'      =>  '201',   
                ]);

        $this->assertDataBaseHas('category', [
            'ID'    => '1',
            'name'  => "category_test",
        ]);
    }

    /** @test */
    public function error_if_category_exist(){
        $response = $this->json('POST', 'api/category', [
            "ID"    => '1',
            "name"  => "category_test"
        ]);

        $response->assertStatus(200)
                ->assertJson([
                    'status'    => 'Bad Request',
                    'code'      =>  '400',   
                ]);
    }
}
