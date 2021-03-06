@extends('layouts.app')

@section('content')

<h1>Criar Loja</h1>
<form action="{{route('admin.stores.store')}}" method="post" enctype="multipart/form-data">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <div class="form-group">
        <label for="">Nome Loja</label>
        <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" value="{{old('name')}}">

        @error('name')
        <div class="invalid-feedback">
            {{$message}}
        </div>
        @enderror
    </div>

    <div class="form-group">
        <label for="">Descrição</label>
        <input type="text" name="description" class="form-control @error('description') is-invalid @enderror" value="{{old('description')}}">

        @error('description')
        <div class="invalid-feedback">
            {{$message}}
        </div>
        @enderror
    </div>

    <div class="form-group">
        <label for="">telefone</label>
        <input type="text" name="phone" id="phone" class="form-control @error('phone') is-invalid @enderror" value="{{old('phone')}}">

        @error('phone')
        <div class="invalid-feedback">
            {{$message}}
        </div>
        @enderror
    </div>

    <div class="form-group">
        <label for="">Celular/Whatsapp</label>
        <input type="text" name="mobile_phone" id="mobile_phone" class="form-control @error('mobile_phone') is-invalid @enderror" value="{{old('mobile_phone')}}">

        @error('mobile_phone')
        <div class="invalid-feedback">
            {{$message}}
        </div>
        @enderror
    </div>

    <div class="form-group">
        <label for="">Logo da Loja</label>
        <input type="file" name="logo" class="form-control @error('logo') is-invalid @enderror">

        @error('logo')
        <div class="invalid-feedback">
            {{$message}}
        </div>
        @enderror
    </div>

    <div class="form-group">
        <button class="btn btn-lg btn-success" type="submit">Criar Loja</button>
    </div>
</form>

@endsection

@section('scripts')
<script>
    let imPhone = new Inputmask('(99) 9999-9999');
    imPhone.mask(document.getElementById('phone'));

    let imMobilePhone = new Inputmask('(99) 99999-9999');
    imMobilePhone.mask(document.getElementById('mobile_phone'));
</script>

@endsection
