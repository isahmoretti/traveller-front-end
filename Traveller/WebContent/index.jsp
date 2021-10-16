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

  <title>Traveller - O melhor portal para planejar a próxima viagem</title>
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
  <!--Início do menu-->
  <header>
    <nav class="navbar navbar-expand-md navbar-dark py-3"
      style="background:linear-gradient(135deg, #182857, #084F8C, #54A4EA)" id="topo">
      <a href="./index.htm" class="navbar-brand">
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
            <a class="nav-link botao text-white m-1  text-center px-3" href="#" data-toggle="modal"
              data-target="#modalLogin">Login</a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!--Fim do menu-->

  <!--Início do conteúdo principal-->
  <!--início de botoes-->
<div class="py-5 container">
  <div class="sidenav row justify-content-center">
    <a class="botao-topo my-2 py-3 mx-3 text-center col-sm-12 col-md-2 botao-topo" href="#" data-toggle="modal"
    data-target="#modalBusca">Hospedagem</a>
    <a class="botao-topo my-2 py-3 mx-3 text-center col-sm-12 col-md-2 botao-topo" href="#" data-toggle="modal"
    data-target="#modalBusca">Aluguel de carro</a>          
    <a class="botao-topo my-2 py-3 mx-3 text-center col-sm-12 col-md-2 botao-topo" href="#" data-toggle="modal"
    data-target="#modalBusca">Como chegar</a>   
    <a class="botao-topo my-2 py-3 mx-3 text-center col-sm-12 col-md-2 botao-topo" href="#" data-toggle="modal"
    data-target="#modalBusca">Dicas úteis</a>   
    <a class="botao-topo my-2 py-3 mx-3 text-center col-sm-12 col-md-2 botao-topo" href="#" data-toggle="modal"
    data-target="#modalBusca">O que fazer</a>  
  </div>
</div>
  <!--fim de botões-->
  <!--Início da área de busca-->
<div class="container-fluid py-5 campo-busca-home align-items-center">
  <form class="d-flex col-auto justify-content-center">
    <input class="my-3 campo-busca form-control me-2 w-75" type="search" placeholder="Para onde você vai?" aria-label="Search"><button class="my-3 mx-2 px-4 py-2 botao btn" type="submit"><i class="fas fa-search"></i></button>
    
  </form>
  <div class="align-items-center  d-flex col-auto justify-content-center">
    <a class="px-5" href="#"> Buscar lugares incríveis perto de você</a>
  </div>  
</div>
<!--fim da área de busca-->
<!--Início da seção 2-->
<section class="py-5">
  <div class="container scroll">
    <h2 class="titulos___home h2__home py-2">Explore os destinos perto de você</h2>
    <div class="row">
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/campos-do-jordao.jpeg" class="float-left mx-3 miniatura"
          alt="Ilustração de Campos do Jordão">
        <h5 class="titulos___home">Campos do Jordão</h5>
        <p class="text-muted">Fica a 171,7 km </p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/sao-sebastiao.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de São Sebastião">
        <h5 class="titulos___home">São Sebastião</h5>
        <p class="text-muted">Fica a 183 km </p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/sao-roque.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de São Roque">
        <h5 class="titulos___home">São Roque</h5>
        <p class="text-muted">Fica a 65 km </p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/serra-negra.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de Serra Negra">
        <h5 class="titulos___home">Serra Negra</h5>
        <p class="text-muted">Fica a 144 km </p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/ubatuba.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de Ubatuba">
        <h5 class="titulos___home">Ubatuba</h5>
        <p class="text-muted">Fica a 226 km </p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/guaruja.jpeg" class="float-left mx-3 miniatura" alt="Ilustração do Guarujá">
        <h5 class="titulos___home">Guarujá</h5>
        <p class="text-muted">Fica a 100 km </p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/ilha-bela.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de Ilhabela">
        <h5 class="titulos___home">Ilhabela</h5>
        <p class="text-muted">Fica a 200km </p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/aguas-de-lindoia.jpeg" class="float-left mx-3 miniatura"
          alt="Ilustraçã de Águas de Lindóia">
        <h5 class="titulos___home">Águas de Lindóia</h5>
        <p>Fica a 182 km </p>
      </div>
    </div>
  </div>
  </div>
</section>
<!--Fim da seção 2-->
<!--Início da section 3-->
<section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home"><a href="onde_se_hospedar.jsp" rel="noopener noreferrer">Onde se hospedar</a></h2>
    <div class="row">
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/hotel.jpg" class=" miniatura" alt="Ilustração de um hotel">
        <h5 class="titulos___home py-2 text-dark">Hotel</h5>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/resort-ok.jpg" class=" miniatura" alt="Ilustração de um resort">
        <h5 class="titulos___home py-2 text-dark">Resort</h5>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/flat.jpeg" class=" miniatura" alt="Ilustração de um flat">
        <h5 class=" titulos___home py-2 text-dark">Flat</h5>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/casa.jpeg" class=" miniatura" alt="Ilustração de uma casa">
        <h5 class="titulos___home  py-2 text-dark">Casa no campo</h5>
      </div>
    </div>
  </div>
  </div>
  </div>
</section>
<!--Fim da section 3-->

<!--Início da section 4-->
<section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home"><a href="vida_noturna.jsp" rel="noopener noreferrer">Curta a noite</a></h2>
    <div class="row">
      <div class="row row-cols-1 row-cols-md-2">
        <div class="col mb-4">
          <div class="card borda">
            <img src="assets/images/show.jpeg" class="card-img-top miniatura_grande"
              alt="Pessoas reunidas para ver um show de rock">
            <div class="card-body">
              <h5 class="titulos___home card-title">Shows</h5>
              <p class="card-text">Confira a programação de shows nacionais e internacionais de todos os estilos
                musicais.</p>
            </div>
          </div>
        </div>
        <div class="col mb-4">
          <div class="card borda">
            <img src="assets/images/pub.jpeg" class="card-img-top miniatura_grande" alt="Amigos brindando em um pub">
            <div class="card-body">
              <h5 class=" titulos___home card-title">Pubs</h5>
              <p class="card-text"> Escontre um pub para curtir com os amigos que combina com o seu estilo.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>
<!--Fim da section 4-->

<!--Início section 5-->

<section class="container">

  <div class="row text-white borda_card_grande borda_card_azul" style="background-color: #084F8C;">
    <div class="col-lg-6 p-0">
      <img src="assets/images/dicas-uteis-1.jpeg" class="img-fluid borda_card_imagem" alt="Pintura de um homem mergulhando">
    </div>
    <div class="col-lg-6 p-5">
      <h1 class="display-4 py-3">Dicas úteis para sua viagem</h1>
      <p class="lead py-2">Tudo o que você precisa para criar um roteiro perfeito</p>
      <a class="botao_login py-3 px-3 px-5" href="dicas_uteis.jsp">Saiba mais</a>
    </div>
  </div>
</section>

<!--Fim da section 5-->

<!--Início section 6-->

<section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home"><a href="cultura.jsp" rel="noopener noreferrer">Agenda cultural</a></h2>
    <div class="row">
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/exposuicao-de-arte.jpeg" class="float-left mx-3 miniatura" alt="Mulher observando quadros">
        <h5 class="titulos___home">Exposição de arte francesa</h5>
        <p class="text-muted">De 13/06 a 17/07 em São Paulo </p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/musical.jpeg" class="float-left mx-3 miniatura" alt="Casal contracenando em musical">
        <h5 class="titulos___home">Estreia de musical inglês</h5>
        <p class="text-muted">12/07 em Curitiba </p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/mostra-de-filmes.jpeg" class="float-left mx-3 miniatura"
          alt="Letreiro luminoso escrito central do cinema">
        <h5 class="titulos___home">Mostra de filmes anos 30</h5>
        <p class="text-muted">De 10/06 a 17/06 no Rio de Janeiro </p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/oficina-origami.jpeg" class="float-left mx-3 miniatura" alt="Tsuru de origami">
        <h5 class="titulos___home">Oficina de Origami</h5>
        <p class="text-muted">25/06 em Sorocaba</p>
      </div>
    </div>
</section>

<!--Fim da section 6-->

<!--Início section 7-->

<section class="py-5">
  <div class="container">
     <h2 class="titulos___home py-2 h2__home"><a href="gastronomia.jsp" rel="noopener noreferrer">Prove o melhor da gastronomia</a></h2>
    <div class="row">
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/restaurantes.png" class="miniatura" alt="Prato de alta gastronomia">
        <h5 class=" titulos___home py-2 text-dark">Restaurantes</h5>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/hamburguerias.jpeg" class="miniatura" alt="Hamburguer gourmet">
        <h5 class=" titulos___home  py-2 text-dark">Hamburguerias</h5>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/bares.jpeg" class="miniatura" alt="Coquetel">
        <h5 class=" titulos___home  py-2 text-dark">Bares</h5>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/cafes.jpeg" class="miniatura" alt="Café com latte art">
        <h5 class=" titulos___home  py-2 text-dark">Cafés</h5>
      </div>
    </div>
</section>
<!--Fim da section 7-->

<!--Início section 8-->

<section class="py-5">
  <div class="container">
    <h2 class="titulos___home h2__home py-2">Destinos favoritos dos viajantes</h2>
    <div class="row">
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/gramado.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de Gramado">
        <h5 class="titulos___home" >Gramado</h5>
        <p class="text-muted"><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i
            class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i></p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/disney.jpeg" class="float-left mx-3 miniatura" alt="Ilustração da Disney">
        <h5 class="titulos___home">Disney</h5>
        <p class="text-muted"><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i
            class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i></p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/jericoacoara.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de Jericoacoara">
        <h5 class="titulos___home">Jericoacoara</h5>
        <p class="text-muted"><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i
            class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i></p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/paris.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de Paris">
        <h5 class="titulos___home">Paris</h5>
        <p class="text-muted"><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i
            class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i></p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/cancun.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de Cancún">
        <h5 class="titulos___home">Cancún</h5>
        <p class="text-muted"><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i
            class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i></p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/porto-seguro.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de Porto Seguro">
        <h5 class="titulos___home">Porto Seguro</h5>
        <p class="text-muted"><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i
            class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i></p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/porto-de-galinhas.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de Porto de Galinhas">
        <h5 class="titulos___home">Porto de Galinhas</h5>
        <p class="text-muted"><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i
            class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i></p>
      </div>
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/rio-de-janeiro.jpeg" class="float-left mx-3 miniatura" alt="Ilustração do Rio de Janeiro">
        <h5 class="titulos___home">Rio de Janeiro</h5>
        <p class="text-muted"><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i
            class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i><i class="fas fa-star estrela"></i></p>
      </div>
</section>

<!--Fim da section 8-->

<!--Início da section 9-->

<section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home"><a href="historia.jsp" rel="noopener noreferrer">Um pouco de história</a></h2>
    <div class="row">

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/roma.jpeg" class="miniatura" alt="Monumento do Coliseu em Roma">
        <h5 class="titulos___home py-2 text-dark">A história de Roma em 10 pontos turísticos</h5>
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

<!--Fim da section 9-->

<!-- Início section 10-->

<section class="container">

  <div class="row text-white borda_card_grande borda_card_azul" style="background-color: #084F8C;">
    <div class="col-lg-6 p-0">
      <img src="assets/images/aluguel-de-carro.jpeg" class="img-fluid borda_card_imagem" alt="Pintura de uma estrada">
    </div>
    <div class="col-lg-6 p-5">
      <h1 class="display-4 py-3">Alugue um carro</h1>
      <p class="lead py-2">As melhores condições para você reservar e aproveitar</p>
       <a class="botao_login py-3 px-3 px-5" href="alugue_um_carro.jsp">Saiba mais</a>
    </div>
</section>

<!--Fim da section 10-->

<!-- Início da section 11-->

<section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home"><a href="parques.jsp" rel="noopener noreferrer">Explore parques da cidade</a></h2>
    <div class="row">
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/ibirapuera.jpeg" class="miniatura" alt="Parque do Ibirapuera em São Paulo">
        <h5 class=" titulos___home py-2 text-dark">São Paulo</h5>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/jardim-botanico-rio-de-janeiro.jpeg" class="miniatura" alt="Jardim BoTânico do Rio de Janeiro">
        <h5 class="titulos___home py-2 text-dark">Rio de Janeiro</h5>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/curitiba.jpeg" class="miniatura" alt="Parque Tanguá em Curitiba">
        <h5 class="titulos___home py-2 text-dark">Curitiba</h5>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <img src="assets/images/belo-horizonte.jpeg" class="miniatura" alt="Parque Municipal de Belo Horizonte">
        <h5 class="titulos___home py-2 text-dark">Belo Horizonte</h5>
    </div>
</section>

<!--Fim da section 11-->

<!--Início section 12-->

<section class="py-5">
  <div class="container">
    <h2 class="titulos___home py-2 h2__home"><a href="entretenimento.jsp" rel="noopener noreferrer">Entretenimento</a></h2>
    <div class="row">
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/em-familia.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de uma família dançando na Chuva">
        <h5 class="titulos___home">Em família</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/com-os-amigos.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de amigos reunidos no bar">
        <h5 class="titulos___home">Com os amigos</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/bom-para-criancas.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de crianças brincando na praia">
        <h5 class="titulos___home">Para crianças</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/pet-friendly.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de cachorros Golden">
        <h5 class="titulos___home">Pet Friendly</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/para-casal.jpeg" class="float-left mx-3 miniatura" alt="">
        <h5 class="titulos___home">Para casal</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/para-solteiros.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de um homem sozinho no bar">
        <h5 class="titulos___home">Para solteiros</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/para-adolescentes.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de amigas adolescentes">
        <h5 class="titulos___home">Para adolescente</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/melhor-idade.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de um casal de idosos">
        <h5 class="titulos___home">Melhor idade</h5>
      </div>
    </div>
</section>

<!--Fim section 12-->

<!--Início section 13-->

<section class="container mb-5">

  <div class="row text-white borda_card_grande borda_card_azul" style="background-color: #084F8C;">
    <div class="col-lg-6 p-0">
      <img src="assets/images/como-chegar.png" class="img-fluid borda_card_imagem" alt="Pintura de uma Kombi amarela na praia">
    </div>
    <div class="col-lg-6 p-5">
      <h1 class="display-4 py-3">Aprenda como chegar</h1>
      <p class="lead py-2">Informações para viagens de carro, ônibus e avião.</p>
       <a class="botao_login py-3 px-3 px-5" href="como_chegar.jsp">Saiba mais</a>
    </div>
</section>
<!--Fim section 13-->
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

<!--Início do Modal caixa de busca-->
<div class="modal fade" id="modalBusca" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      </div>
      <div class="modal-body">
        <form class="d-flex col-auto justify-content-center">
          <input class="my-3 campo-busca form-control me-2 w-75" type="search" placeholder="Para onde você vai?" aria-label="Search">
          <button class="my-3 mx-2 px-4 py-2 botao" type="submit"><i class="fas fa-search"></i></button>
        </form>
        <div class="text-busca py-1">
          <a class="" href="#">
            <p class="text-center justify-content-center my-3"><i class=" px-2 py-2 icon_perto fas fa-location-arrow"></i> PERTO</p>
          </a>
        </div>
       
      </div>
    </div>
  </div>
</div>
<!--Fim do Modal caixa de busca-->

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