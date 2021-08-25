@extends('layouts.front')

@section ('content')

<div class="row">
    <div class="col-12">
        <h2>Meus Pedidos</h2>
        </h2>
        <hr>

        <div id="accordion">
            @forelse($userOrders as $key => $order)
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

                        <ul>
                            @php $items = unserialize($order->items); @endphp

                            @foreach($items as $item)

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
            <div class="alert alert-warning">Nenhum pedido receido</div>
            @endforelse

        </div>

        <div class="col-12">
            <hr>
            {{$userOrders->links()}}
        </div>


    </div>
</div>

@endsection