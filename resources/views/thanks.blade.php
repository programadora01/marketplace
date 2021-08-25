@extends('layouts.front')


@section('content')


<h2 class="alert alert-success">
    Muito obrigado(a) por sua compra!
</h2>
<h3>
    Seu pedido foi processado com sucesso, código do pedido: {{request()->get('order')}}
</h3>



@endsection