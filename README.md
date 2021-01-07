## pruebaOM
Prueba técnica Octopus Mining
=======
### Desarollo de API para registro de items

#### Screenshots

    * Si no existe la categoría, se crea
    
    * Registro de un item
    
    * Buscar un item por el id
    
    * Modificación de item
    
    * Eliminación del item

#### Script para base de datos
```
Se incluye un script en los archivos del proyecto (scriptfinal.sql) el cual crea la base de datos e inserta datos
en las tablas country y currency.
```
#### Cómo probar el proyecto ?

`Windows con Laragon: `

**Clonar Repo**
1.- Abrir la terminal de laragon.

<p align="center"><img src="https://1.bp.blogspot.com/-sOqvnuCNOrM/XRI2bsTlMNI/AAAAAAAAmio/S7jnL4uPR_kmhoEGV9Ry7lbFPcQ_3JI8QCLcBGAs/s1600/paso8.png" width="600"></p>

2.- Debes clonar el repo en el directorio **"laragon/www"** con el comando **git clone https://github.com/zoekjs/pruebaOM.git**.

3.- Entra a la carpeta del repo clonado (**prueba-OM**) a través de la terminal de laragon y ejecuta el comando **composer install**, para instalar las dependencias del proyecto.

4.- Crea el archivo **.env** para establecer los parámetros de conexión con la DB (MySQL fue utilizada en el desarrollo).

5.- ejecuta el archivo **scriptfinal.sql** para crear la DB, sus tablas y rellenar con data las tablas currency y country.

6.- A través de POSTMAN puedes realizar las peticiones a los distintos endpoints:
```
    Endpoints:
        Items:
            - (GET) /api/items (Retorna todos los items registrados)
            - (POST) /api/items (Registrar items con la siguiente información en formato JSON (title, price, currency, country, category_id))
            - (PUT) /api/items/<id> (Modifica un registro, los datos a modificar son los siguientes: title, price, currency, country, category_id)
            - (DELETE) /api/items/<id> (Elimina un registro de la DB)
            
        Categories:
            - (GET) /api/category (Retorna todas las categorías registradas)
            - (POST) /api/category (Permite registrar una categoria mediante los datos ID y name en formato JSON)
```

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[Many](https://www.many.co.uk)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- **[OP.GG](https://op.gg)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
>>>>>>> inicio prueba
