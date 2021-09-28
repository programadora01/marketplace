@extends('layouts.app')

@section('content')

@if(!$onwers)
<a href="/#" class="btn btn-lg btn-success">Gestão de Lojistas</a>
@else
<table class="table table-striped">
    <thead>
        <tr>
            <th>#</th>
            <th>Nome</th>
            <th>E-mail</th>
            <th>Loja</th>
            <th>Permissão</th>
            <th>Ação</th>
        </tr>
    </thead>
    <tbody>
        @foreach($onwers as $onwer)
        <tr>
            <td>{{ $onwer->id }}</td>
            <td>{{ $onwer->name }}</td>
            <td>{{ $onwer->email }}</td>
            <td>{{ $onwer->store->name }}</td>
            <td>{{ $onwer->role }}</td>
            <td>
                <div class="btn-group">
                    <a href="/#" class="btn btn-sm btn-primary">Editar</a>&nbsp;&nbsp;
                    <form action="/#" method="post">
                        @csrf
                        @method("DELETE")
                        <button type="submit" class="btn btn-sm btn-danger">Remover</button>
                    </form>
                </div>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endif

{{$onwers->links()}}

@endsection
