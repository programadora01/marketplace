<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Marketplace L6</title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="margin-bottom: 40px;">
        <div class="container-fluid">

            <a class="navbar-brand" href="{{route('home')}}">Marketplace L6</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                @auth
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item @if(request()->is('admin/orders*')) active @endif">
                        <a class="nav-link" href="{{route('admin.orders.my')}}">Meus Pedidos</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link @if(request()->is('admin/stores*')) active @endif" aria-current="page" href="{{route('admin.stores.index')}}">Loja</a>
                    </li>

                    <li class="nav-item @if(request()->is('admin/products*')) active @endif">
                        <a class="nav-link" href="{{route('admin.products.index')}}">Produtos</a>
                    </li>
                    <li class="nav-item @if(request()->is('admin/categories*')) active @endif">
                        <a class="nav-link" href="{{route('admin.categories.index')}}">Categorias</a>
                    </li>

                </ul>

                <div class="my-2 my-lg-0">
                    <ul class="navbar-nav mr-auto">

                        <li class="nav-item">
                            <a href="{{route('admin.notifications.index')}}" class="nav-link">
                                <span class="badge badge-danger">{{auth()->user()->unreadNotifications->count()}}</span>
                                <i class="fa fa-bell"></i>
                            </a>
                        </li>

                        <li class="nav-item">
                            <form action="{{route('logout')}}" class="logout" method="POST" style="display:none;">
                                @csrf
                            </form>
                            <a class="nav-link" href="#" onclick="event.preventDefault(); document.querySelector('form.logout').submit(); ">Sair</a>

                        </li>
                        <li class="nav-item">
                            <span class="nav-link">{{auth()->user()->name}}</span>
                        </li>

                    </ul>
                </div>
                @endauth
            </div>
        </div>
    </nav>
    <div class="container">
        @include('flash::message')
        @yield('content')
    </div>

    <script src="{{asset('js/app.js')}}"></script>
    @yield('scripts')
</body>

</html>
