@extends('layouts.front')


@section('content')


<h2 class="alert alert-success">
    Muito obrigado(a) por sua compra!
</h2>
<h4>
    Seu pedido foi processado com sucesso, código do pedido: {{request()->get('order')}}.

    @if(request()->has('b'))
    <br><br><br>
    <div class="text-center">
        <a href="{{request()->get('b')}}" class="btn btn-lg btn-success" target="_blank">IMPRIMIR BOLETO</a>
    </div>

    @endIf
</h4>



@endsection
