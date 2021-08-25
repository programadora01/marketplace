<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index')->name('home');

Route::get('/product/{slug}', 'HomeController@single')->name('product.single');

Route::get('/category/{slug}', 'CategoryController@index')->name('category.single');

Route::get('/store/{slug}', 'StoreController@index')->name('store.single');



Route::prefix('cart')->name('cart.')->group(function () {

    Route::get('/', 'CartController@index')->name('index');
    Route::post('add', 'CartController@add')->name('add');

    Route::get('remove/{slug}', 'CartController@remove')->name('remove');
    Route::get('cancel', 'CartController@cancel')->name('cancel');
});


Route::prefix('checkout')->name('checkout.')->group(function () {

    Route::get('/', 'CheckoutController@index')->name('index');
    Route::post('/proccess', 'CheckoutController@proccess')->name('proccess');
    Route::get('/thanks', 'CheckoutController@thanks')->name('thanks');
});




Route::get('/model', function () {

    //Mass Assignment - Atribuição em massa
    //$user = \App\User::create([
    //  'name' => 'Sirleii Silva',
    //  'email' => 'email@email.com',
    //  'password' => bcrypt('123345566')
    //]);
    //dd($user);

    // Mass Update
    //\App\User::All() - retorna todos os usuários 
    //\App\User::find(3) - retorna o usuário com base no id
    //\App\User::where('name', 'Caroline Abernathy')->first() - Retorna o usuário conforme dado inserido na 
    //select * from users where name 'Caroline Abernathy'

    //$user = \App\User::find(43);
    //$user = $user->update([
    //   'name' => 'Sirleii Silva'

    //]); //true ou false
    //dd($user);

    //Active Record   
    //$products = \App\Product::all(); //select * from products

    //$user = new \App\User();
    //$user = \App\User::find(41);
    //$user->name = 'Usuário Teste editado';
    //$user->email = 'email@teste.com';
    //$user->password = bcrypt('12345678');

    //return $user->save();
    //$user->save();

    //return \App\User::paginate(10); - traz os resultados com limite máximo determinado, trazendo link das outras paginas

    //Como eu faria para pegar a loja de um usuáario
    //$user = \App\User::find(4);

    //return $user->store; //quando for 1:1 vai retorno o objeto único (store) 1:N Vai retornar uma collection de dados (objetos da alegação) 

    //dd($user->store()->count()); //O objeto único o (store) se for  Collection de Dados(Objetos)

    //pegar os produtos da loja 
    //$loja = \App\Store::find(1);
    //return $loja->products->count(); $loja->products()->where('id', 9)->get();

    //Pegar as lojas de uma categoria determinada categoria
    //$categoria = \App\Category::find(1);
    //$categoria->products;

    //Criar uma loja para um usuário
    //$user = App\User::find(10);
    //$store = $user->store()->create([
    //    'name' => 'Loja Teste',
    //    'description' => 'Loja Teste de produtos de informática',
    //    'mobile_phone' => 'XX-XXXXXX-XXXX',
    //    'phone' => 'XX-XXXXXX-XXXX',
    //    'slug' => 'loja-teste'
    //]);
    //dd($store);

    //Criar um produto para uma loja
    //$store = \App\Store::find(41);
    //$product = $store->products()->create([
    //    'name' => 'Notebook Dell',
    //    'description' => 'CORE I5 10GB',
    //    'body' => 'Qualquer coisa...',
    //    'price' => 2999.90,
    //    'slug' => 'notebook-dell',   
    //]);
    //dd($product);

    //Criar uma categoria
    //    \App\Category::Create([
    //        'name' => 'Games',
    //        'slug' => 'games'
    //    ]);

    //    \App\Category::Create([
    //        'name' => 'Notebooks',
    //        'slug' => 'notebooks'
    //    ]);

    //return \App\Category::all();

    //Adicionar um produto para uma categoria ou vice-versa
    //$product = \App\Product::find(42);
    //dd($product->categories()->sync([2]));//adiciona categoria 
    //dd$product->categories()->detach([]);remove categoria
    //dd($product->categories()->sync([1,2])); sync permite adicionar categoria remover uma dela sem mexer na outra e vice-versa
    $product = \App\Product::find(42);
    return $product->categories;
    //return \App\User::all(); 



    //return $products;

});
//Comandos para chamar as rotas
//Route::get - recuperar dados
//Route::post - Criar dados
//Route::put - atualizaçãO de dados
//Route::patch - atualização de dados
//Route::delete - remoção de dados
//Route::options - retorna quais cabeçalho aquela rota específica responde

Route::group(['middleware' => ['auth']], function () {

    Route::get('my-orders', 'UserOrderController@index')->name('user.orders');

    Route::prefix('admin')->name('admin.')->namespace('Admin')->group(function () {

        //Route::prefix('stores')->name('stores.')->group(function(){

        //Route::get('/', 'StoreController@index')->name('index');
        //Route::get('/create', 'StoreController@create')->name('create');
        //Route::post('/store', 'StoreController@store')->name('store');
        //Route::get('/{store}/edit', 'StoreController@edit')->name('edit');
        //Route::post('/update/{store}', 'StoreController@update')->name('update');
        //Route::get('/destroy/{store}', 'StoreController@destroy')->name('destroy');

        //});

        Route::resource('stores', 'StoreController');
        Route::resource('products', 'ProductController');
        Route::resource('categories', 'CategoryController');

        Route::post('photos/remove', 'ProductPhotoController@removePhoto')->name('photo.remove');

        Route::get('orders/my', 'OrdersController@index')->name('orders.my');
    });
});

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
