@extends('layouts.app')

@section ('content')

<div class="row">
    <div class="col-12">
        <h2>Pedidos Recebidos</h2>
        </h2>
        <hr>

        <div id="accordion">
            @forelse($orders as $key => $order)
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne{{$key}}" aria-expanded="true" aria-controls="collapseOne">
                            Pedido nº: {{$order->reference}}
                        </button>
                    </h5>
                </div>

                <div id="collapseOne{{$key}}" class="collapse @if($key == 0) show @endif" aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <h1>ID Loja usuário: {{auth()->user()->store->id}}</h1>

                        <ul>
                            @php $items = unserialize($order->items); @endphp

                            @foreach(filtersItemsByStoreId($items, auth()->user()->store->id) as $item)

                            <li>{{$item['name']}} | R$ {{number_format($item['price'] * $item['amount'], 2, ',', '.')}}</li>
                            <br>
                            Quanttidade pedida: {{$item['amount']}}
                            <br>


                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            @empty
            <div class="alert alert-warning">Nenhum pedido recebido</div>
            @endforelse

        </div>

        <div class="col-12">
            <hr>
            {{$orders->links()}}
        </div>



    </div>
</div>



@endsection
