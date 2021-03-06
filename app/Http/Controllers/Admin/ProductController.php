<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use App\Http\Requests\ProductRequest;
use App\Traits\UploadTrait;
use App\Category;

class ProductController extends Controller
{
    use UploadTrait;

    private $product;

    public function __construct(Product $product)
    {
        $this->product = $product;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = auth()->user();

        if (!$user->store()->exists()) {

            flash('É preciso criar uma loja para cadastrar produtos!')->warning();
            return redirect()->route('admin.stores.index');
        }

        $products = $user->store->products()->paginate(10);

        return view('admin.products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = \App\Category::all(['id', 'name']);

        return view('admin.products.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {

        $data = $request->all();
        $categories = $request->get('categories', null);

        $data['price'] = formatPriceToDatabase($data['price']);

        //dd($data['price']);

        $store = auth()->user()->store;
        $product = $store->products()->create($data);

        $product->categories()->sync($categories);

        if ($request->hasfile('photos')) {

            $images = $this->imageUpload($request->file('photos'), 'image');

            $product->photos()->createMany($images);
        }


        flash('Produto Criado com Sucesso')->success();
        return redirect()->route('admin.products.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $product
     * @return \Illuminate\Http\Response
     */
    public function edit($product)
    {
        $product = $this->product->findOrFail($product);
        $cat = Category::all();


        // dd($categories);

        return view('admin.products.edit', compact('product', 'cat'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $product
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, $product)
    {
        $data = $request->all();
        $categories = $request->get('categories', null);
        $data['price'] = formatPriceToDatabase($data['price']);

        $product = $this->product->find($product);

        $product->update($data);

        $product->categories()->sync($categories);


        if ($request->hasfile('photos')) {
            $images = $this->imageUpload($request->file('photos'), 'image');

            $product->photos()->createMany($images);
        }

        flash('Produto Atualizado com Sucesso')->success();
        return redirect()->route('admin.products.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy($product)
    {

        $product = $this->product->find($product);
        $product->delete();

        flash('Produto Removido com Sucesso')->success();
        return redirect()->route('admin.products.index');
    }

    //private function imageUpload(Request $request, $imageColumn)
    //{
    //
    //    $images = $request->file('photos');
    //
    //    $uploadedImages = [];
    //
    //    foreach($images as $image){
    //        $uploadedImages[] = [$imageColumn => $image->store('products', 'public')];
    //    }
    //    return $uploadedImages;
    //}


}
