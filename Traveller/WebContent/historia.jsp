<!DOCTYPE html>
<html lang="pt-br">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
    integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!--Jquery-->

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <!--Meu CSS-->
    <link rel="stylesheet" href="assets/css/style.css">
   <script src="assets/js/script_geolocalizacao.js"></script>
  <title>História</title>
</head>

<body>
  <!-- Modal -->
  <div class="modal fade" id="modalLogin" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modalLoginTitulo">Fazer login</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <label for="LoginEmail">Email </label>
              <input type="email" class="form-control" id="LoginEmail">
            </div>
            <div class="form-group">
              <label for="loginSenha">Senha</label>
              <input type="password" class="form-control" id="loginSenha">
            </div>
            <div class="form-group form-check">
            </div>
            <button type="button" class="btn botao btn-lg btn-block botao">Entrar</button>
            <small class="form-text text-muted">Esqueceu a senha?<a href="#" class="card-link" data-toggle="modal" data-target="#modalRecuperarSenha"> Clique aqui</a>.</small>
            <small class="form-text text-muted">Ainda não tem um perfil no Traveller?<a href="#" class="card-link" data-toggle="modal" data-target="#modalCadastro"> Crie
                Agora</a>.</small>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!--Fecha do modal-->
  <!-- Inicio do menu -->
<header>
    <nav class="navbar navbar-expand-md navbar-dark py-3"
      style="background:linear-gradient(135deg, #182857, #084F8C, #54A4EA)" id="topo">
      <a href="index.jsp" rel="noopener noreferrer"><img src="assets/images/logo-traveller-pequeno.svg" alt="Logo Traveller"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link text-white m-1" href="#">Criar roteiro</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white m-1" href="#">Avaliações</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white m-1" href="#">Ajuda</a>
          <li class="nav-item">
            <a class="botao  text-light nav-link m-1  text-center px-3" href="#" data-toggle="modal"
              data-target="#modalLogin">Login</a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!--Fim do menu-->

  <!--Início do conteúdo principal-->

      <div>
          <img src="assets/images/historia.svg" class="card-img"" alt="ilustração Egito">
    </div>
    <main>
        <h1 class="text-center py-3">História</h1>
  <!--início de botoes-->
        <div class="py-5 container">
         <div class="sidenav row justify-content-center">
         <a class="botao-topo my-2 py-3 mx-3 text-center col-sm-12 col-md-2" href="#america">América</a>
         <a class="botao-topo my-2 py-3 mx-3 text-center col-sm-12 col-md-2" href="#europa">Europa</a>          
         <a class="botao-topo my-2 py-3 mx-3 text-center col-sm-12 col-md-2" href="#asia"> Ásia</a>   
         <a class="botao-topo my-2 py-3 mx-3 text-center col-sm-12 col-md-2" href="#africa">África</a>   
         <a class="botao-topo my-2 py-3 mx-3 text-center col-sm-12 col-md-2" href="#oceania">Oceania</a>  
       </div>
      </div>
  <!--fim de botões-->
   <!-- Início Seção 1 -->
      <section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home " id="america">América</h2>
    <div class="row">

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/monumentos-historicos-da-argentina.jpg" class="miniatura" alt="Obelisco">
        <h5 class="titulos___home py-2 text-dark">Monumentos históricos da Argentina</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/ouro-preto.jpeg" class="miniatura" alt="Igreja e estátua de Aleijadinho em Ouro Preto">
        <h5 class="titulos___home py-2 text-dark">10 Fatos históricos sobre Ouro Preto</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/copan.jpeg" class="miniatura" alt="Prédio Copan em São Paulo">
        <h5 class="titulos___home py-2 text-dark">A história por trás da construção do Copan</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/salvador.jpeg" class="miniatura" alt="Escultura histórica em Salvador">
        <h5 class="titulos___home py-2 text-dark">Conhecendo Salvador através dos monumentos</h5>
      </div>
    </div>
</section>
<!-- Fim da seção 1 -->
   <!-- Início Seção 2 -->
      <section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home " id="europa">Europa</h2>
    <div class="row">

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/roma.jpeg" class="miniatura" alt="Monumento do Coliseu em Roma">
        <h5 class="titulos___home py-2 text-dark">A história de Roma em 10 pontos turísticos</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/catacumbas-de-paris.jpg" class="miniatura" alt="Catacumbas de Paris">
        <h5 class="titulos___home py-2 text-dark">Um passeio pelas Catacumbas de Paris</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/leste-europeu.jpg" class="miniatura" alt="Castelo de Bran">
        <h5 class="titulos___home py-2 text-dark">Lugares que contam a história do Leste Europeu</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/berlim.png" class="miniatura" alt="Lugar abandonado de Berlim">
        <h5 class="titulos___home py-2 text-dark">Lugares abandonados em Berlim</h5>
      </div>
    </div>
</section>
<!-- Fim da seção 2 -->
   <!-- Início Seção 3 -->
      <section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home" id="asia">Ásia</h2>
    <div class="row">

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/nara.jpg" class="miniatura" alt="Nara">
        <h5 class="titulos___home py-2 text-dark">Nara: a primeira capital do Japão</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/a-grande-muralha.jpg" class="miniatura" alt="A Grande Muralha da China">
        <h5 class="titulos___home py-2 text-dark">10 Coisas que você precisa saber sobre a China</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/indonesia.jpg" class="miniatura" alt="Conjunto de Borobudur">
        <h5 class="titulos___home py-2 text-dark">15 Lugares sagrados da Indonésia</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/malasia.jpg" class="miniatura" alt="Batu Caves, Malásia">
        <h5 class="titulos___home py-2 text-dark">Os principais templos na Malásia</h5>
      </div>
    </div>
</section>
<!-- Fim da seção 3 -->
   <!-- Início Seção 4 -->
      <section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home" id="africa">África</h2>
    <div class="row">

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/egito.jpg" class="miniatura" alt="Abu Simbel (Aswan)">
        <h5 class="titulos___home py-2 text-dark">O Egito além das pirâmides</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/etiopia.jpg" class="miniatura" alt="Igreja monolítica">
        <h5 class="titulos___home py-2 text-dark">As igrejas monolíticas da Etiópia</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/africa-do-sul.jpg" class="miniatura" alt="Caverna na África do Sul">
        <h5 class="titulos___home py-2 text-dark">Cavernas históricas da África do Sul</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/marrocos.jpg" class="miniatura" alt="Escultura histórica em Salvador">
        <h5 class="titulos___home py-2 text-dark">10 Locais históricos no Marrocos</h5>
      </div>
    </div>
</section>
<!-- Fim da seção 4 -->
   <!-- Início Seção 5 -->
      <section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home " id="oceania">Oceania</h2>
    <div class="row">

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/prisao-na-australia.jpg" class="miniatura" alt="Prisão na Austrália">
        <h5 class="titulos___home py-2 text-dark">Fremantle: a antiga prisão australiana</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/sydney.jpg" class="miniatura" alt="Centro de Sydney">
        <h5 class="titulos___home py-2 text-dark">A história de Sydney em 10 monumentos</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/monumento-do-cao.jpg" class="miniatura" alt="O monumento do cão na Nova Zelândia">
        <h5 class="titulos___home py-2 text-dark">O monumento do cão na Nova Zelândia</h5>
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/escultura-maori.jpg" class="miniatura" alt="Escultura histórica em Salvador">
        <h5 class="titulos___home py-2 text-dark">As tradições milenares da cultura maori</h5>
      </div>
    </div>
</section>
<!-- Fim da seção 5 -->
</main>
  <!--Fim do conteúdo principal-->

  <!--Início do rodapé-->
  <footer class="bg-dark text-white my-4 py-5">
    <div class="container">
      <div class="row">
        <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
          <img src="assets/images/logo-traveller-pequeno.svg" class="pb-3" alt="Logo do Treveller" class="logo_rodape">
          <p class="p_footer">O Traveller é uma plataforma de turismo que oferece conteúdos sobre
            acomodações, restaurantes, pontos turísticos e passagens. Aqui, você consegue planejar
            melhor a sua viagem, conhecer as experiências de outros viajantes e fazer reservas com os
            melhores preços.</p>
        </div>
        <div class="my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
          <h6><strong>Sobre o Traveller</strong></h6>
          <ul class="list-unstyled">
            <li><a class="text-white" href="#">Quem somos</a></li>
            <li><a class="text-white" href="#">Privacidade</a></li>
            <li><a class="text-white" href="#">Contato</a></li>
            <li><a class="text-white" href="#">Anuncie</a></li>
            <li><a class="text-white" href="#">FAQ</a></li>
          </ul>
        </div>
        <div class="my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
          <h6><strong>Para você</strong></h6>
          <ul class="list-unstyled">
            <li><a class="text-white" href="#">Avalie</a></li>
            <li><a class="text-white" href="#">Lives</a></li>
            <li><a class="text-white" href="#">Podcast</a></li>
            <li><a class="text-white" href="#">Na Mídia</a></li>
            <li><a class="text-white" href="#">Seja um parceiro</a></li>
          </ul>
        </div>
        <div class="my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
          <h6><strong>Siga-nos</strong></h6>
          <a href="#"><i class=" pr-3 text-white fab fa-facebook-f"></i></a>
          <a href="#"><i class=" pr-3 text-white fab fa-instagram"></i></a>
          <a href="#"><i class=" pr-3 text-white fab fa-twitter"></i></a>
          <a href="#"><i class=" pr-3 text-white fab fa-youtube"></i></a>
          <a href="#"><i class=" pr-3 text-white fab fa-spotify"></i></a>
        </div>
      </div>
  </footer>
  <div class="container linha-rodape">
    <p class="text-muted small">© 2021 Traveller - Todos os direitos reservados</p>
  </div>
  <!--Fim do rodapé-->

  <!--Início Modal cadastro-->
 <div class="modal fade" id="modalCadastro" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalCadastroTitulo">Criar conta</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="row">
            <div class="col-md-6 col-sm-12 form-group">
              <label for="nome">Nome</label>
              <input class="form-control" type="text" name="nome" id="nome" placeholder="Nome">
            </div>
          <div class="col-md-6 col-sm-12 form-group">
            <label for="nome">Sobrenome</label>
            <input class="form-control" type="text" name="sobrenome" id="sobrenome" placeholder="Sobrenome">
          </div>
        </div>
          <div class="form-group">
            <label for="CadastroEmail">Email </label>
            <input type="email" class="form-control" id="CadastroEmail" placeholder="Email">
          </div>
          <div class="form-group">
            <label for="CadastroSenha">Senha</label>
            <input type="password" class="form-control" id="CadastroSenha"placeholder="Senha">
          </div>
          <div class="py-2 form-check">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
            <label class="legenda form-check-label" for="flexCheckChecked">
              Sim, quero receber informações sobre ofertas de viagem e novidades no Traveller. E sei que posso deixar de receber quando quiser.
            </label>
          </div>
          <button type="button" class="btn botao btn-lg btn-block botao">Inscreva-se</button>
          <small class="form-text text-muted text-center">Já tem conta?</small>
            <small class="form-text text-muted text-center"><a href="#" class="card-link" data-toggle="modal" data-target="#modalCadastro">Faça login</a> usando sua conta do Traveller.</small>
        </form>
      </div>
    </div>
  </div>
</div>
<!--Fim modal cadastro-->

<!--Início do Modal recuperar senha-->
<div class="modal fade" id="modalRecuperarSenha" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalCadastroTitulo">Esqueceu sua senha?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Insira o endereço de email associado à sua conta que lhe enviaremos um link de redefinição de senha.</p>
          <div class="form-group">
            <label for="CadastroEmail">Email </label>
            <input type="email" class="form-control" id="CadastroEmail" placeholder="Email">
          </div>
          <button type="button" class="btn botao btn-lg btn-block botao">Enviar link</button>    
          <small class="form-text text-muted text-center"> Ao continuar, você concorda com os Termos de uso e confirma que leu nossa Política de privacidade e cookies.</small>      
      </div>
    </div>
  </div>
</div>
<!--Fim do Modal recuperar senha-->

  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
  </script>
</body>
</html>