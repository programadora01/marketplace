<h1>Olá, {{$user->name}}, tudo bem? Espero que sim!</h1>

<h3>Obrigado por sua inscrição!</h3>
<p>
    Faça bom proveito e excelentes compras em nosso marketplace! <br>
    Seu email de cadastro é: <strong>{{$user->email}}</strong> <br>
    Sua senha: <strong>Por segurança não enviamos sua senha, mas acreditamos que você deve lembrar!</strong>
</p>

<hr>

Email enviado em {{date('d/m/y H:i:s')}}.
