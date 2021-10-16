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
    <script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAyxyzGDzrT9Wwg2bMUQQTM_WgG3jGm9mg&callback=initMap&libraries=&v=weekly"
    async></script>
	<script src="assets/js/script_geolocalizacao.js"></script>
   <script src="assets/js/script_hoteis.js"></script>
  <title>Onde se hospedar</title>
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
            <small class="form-text text-muted">Esqueceu a senha?<a href="#" class="card-link" data-toggle="modal"
                data-target="#modalRecuperarSenha"> Clique aqui</a>.</small>
            <small class="form-text text-muted">Ainda não tem um perfil no Traveller?<a href="#" class="card-link"
                data-toggle="modal" data-target="#modalCadastro"> Crie
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
      <a href="./index.jsp" class="navbar-brand">
        <img src="assets/images/logo-traveller-pequeno.svg" alt="Logo Traveller">
      </a>
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
  <div>
    <img src="assets/images/onde-se-hospedar-topo.svg" class="card-img" alt="Ilustração de uma cidade">
    <h1 class="titulo__paginas text-center py-3">Onde se hospedar</h1>
  </div>

  <!--Início Buscador-->
  <section class="container py-4 border pesquisa">
    <div class="row g-3 py-3 ">
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <input type="text" class="form-control" placeholder="Para onde você vai?" aria-label="Cidade">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2 ">
        <input type="date" class="form-control" placeholder="Check-in" aria-label="Check-in">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2 ">
        <input type="date" class="form-control" placeholder="Check-out" aria-label="Check-out">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <select class="form-select form-control" name="numeroPessoas" id="numeroPessoas">
          <option selected>Quantos hóspedes?</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <select class="form-select form-control" name="estiloViagem" id="estiloViagem">
          <option selected>Qual o estilo da viagem?</option>
          <option value="1">Ecoturismo</option>
          <option value="2">Relax</option>
          <option value="3">Em família</option>
          <option value="4">Cultural</option>
          <option value="5">Romântica</option>
          <option value="6">Mochileiro</option>
          <option value="7">Não sei</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <select class="form-select form-control" name="tipoHospedagem" id="tipoHospedagem">
          <option selected>Qual tipo de hospedagem?</option>
          <option value="1">Hotel</option>
          <option value="2">Pousada</option>
          <option value="3">Casa para temporada</option>
          <option value="4">Hostel</option>
          <option value="5">Todas</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <select class="form-select form-control" name="classificarPor" id="classificarPor">
          <option selected>Classificar por</option>
          <option value="1">Relevância</option>
          <option value="2">Menor preço</option>
          <option value="3">Avaliação</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <button type="submit" class="btn btn-primary busca_btn"><i class="fas fa-search"></i><strong>
            Buscar</strong></button>
      </div>
      
      <div class=" container row align-items-start">
        <div class="py-3 col">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
            <label class="form-check-label" for="flexCheckChecked">
              <p>Encontrar opções perto de mim</p>
          </div>
    </div>
    <div>
      
  </section>
  <!--Fim do buscador-->

  <div class="pai container">
    <div class="box">
       <!--Início do conteúdo principal-->
  <main>
<!--Inicio da seção 1-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/holiday-anhembi.jpg" class="img-card img-fluid rounded-start"
                  alt="Holiday Anhembi">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  		<h5 class="card-title">Holiday Inn Anhembi</h5>
                  		<div>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-bed"></i> Hotel de 3 estrelas</li>
                        <li class="blog-post-text"><i class="fas fa-wifi"></i> Wifi gratuito</li>
                        <li class="blog-post-text"><i class="fas fa-swimmer"></i> Piscina coberta</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-coffee"></i> Café da manhã</li>
                        <li class="blog-post-text"><i class="fas fa-car"></i> Estacionamento</li>
                        <li class="blog-post-text"><i class="fas fa-snowflake"></i> Ar-condicionado</li>
                      </ul>
                    </div>
               		<p class="clearfix">
                     <span class="card-body float-left"><button type="button" class="px-4 btn btn-primary">Saiba
                     mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$416</span>
                </div>
              </div>
            </div>
          </div>
        </section>
    <!--Fim da seção 1--> 
<!--Inicio seção 2-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/melia-paulista-ok.jpg" class="img-card img-fluid rounded-start"
                  alt="Holiday Anhembi">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  		<h5 class="card-title">Meliá Paulista</h5>
                  		<div>
                  <p class="card-text">4,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-bed"></i> Hotel de 4 estrelas</li>
                        <li class="blog-post-text"><i class="fas fa-wifi"></i> Wifi gratuito</li>
                        <li class="blog-post-text"><i class="fas fa-swimmer"></i> Piscina coberta</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-coffee"></i> Café da manhã</li>
                        <li class="blog-post-text"><i class="fas fa-bath"></i> Com banheira</li>
                        <li class="blog-post-text"><i class="fas fa-snowflake"></i> Ar-condicionado</li>
                      </ul>
                    </div>
               		<p class="clearfix">
                     <span class="card-body float-left"><button type="button" class="px-4 btn btn-primary">Saiba
                     mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$388</span>
                </div>
              </div>
            </div>
          </div>
        </section>
<!--Fim seção 2-->

<!--Inicio seção 3-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/ibis-styles-barra-funda-1.jpg" class="img-card img-fluid rounded-start"
                  alt="Ibis Styles Barra Funda">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  		<h5 class="card-title">Ibis Styles Barra Funda</h5>
                  		<div>
                  <p class="card-text">3,7 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-bed"></i> Hotel de 3 estrelas</li>
                        <li class="blog-post-text"><i class="fas fa-wifi"></i> Wifi gratuito</li>
                        <li class="blog-post-text"><i class="fas fa-car"></i> Estacionamento</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-coffee"></i> Café da manhã</li>
                        <li class="blog-post-text"><i class="fas fa-paw"></i> Permite animais</li>
                        <li class="blog-post-text"><i class="fas fa-snowflake"></i> Ar-condicionado</li>
                      </ul>
                    </div>
               		<p class="clearfix">
                     <span class="card-body float-left"><button type="button" class="px-4 btn btn-primary">Saiba
                     mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$188</span>
                </div>
              </div>
            </div>
          </div>
        </section>
<!--Fim seção 3-->

<!--Inicio seção 4-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/wz-hotel-jardins-2.jpg" class="img-card img-fluid rounded-start"
                  alt="WZ Hotel Jardins">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  		<h5 class="card-title">WZ Hotel Jardins</h5>
                  		<div>
                  <p class="card-text">4,7 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-bed"></i> Hotel de 4 estrelas</li>
                        <li class="blog-post-text"><i class="fas fa-wifi"></i> Wifi gratuito</li>
                        <li class="blog-post-text"><i class="fas fa-car"></i> Estacionamento</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-coffee"></i> Café da manhã</li>
                        <li class="blog-post-text"><i class="fas fa-dumbbell"></i> Academia</li>
                        <li class="blog-post-text"><i class="fas fa-snowflake"></i> Ar-condicionado</li>
                      </ul>
                    </div>
               		<p class="clearfix">
                     <span class="card-body float-left"><button type="button" class="px-4 btn btn-primary">Saiba
                     mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$265</span>
                </div>
              </div>
            </div>
          </div>
        </section>
<!--Fim seção 4-->

<!--Inicio seção 5-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/blue-tree-premium-paulista.jpg" class="img-card img-fluid rounded-start"
                  alt="Blue Tree Premium Paulista">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  		<h5 class="card-title">Blue Tree Premium Paulista</h5>
                  		<div>
                  <p class="card-text">4,2 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-bed"></i> Hotel de 4 estrelas</li>
                        <li class="blog-post-text"><i class="fas fa-wifi"></i> Wifi gratuito</li>
                        <li class="blog-post-text"><i class="fas fa-car"></i> Estacionamento</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-coffee"></i> Café da manhã</li>
                        <li class="blog-post-text"><i class="fas fa-swimmer"></i> Piscina coberta</li>
                        <li class="blog-post-text"><i class="fas fa-snowflake"></i> Ar-condicionado</li>
                      </ul>
                    </div>
               		<p class="clearfix">
                     <span class="card-body float-left"><button type="button" class="px-4 btn btn-primary">Saiba
                     mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$268</span>
                </div>
              </div>
            </div>
          </div>
        </section>
<!--Fim seção 5-->

<!--Inicio seção 6-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/mercure-pinheiros-1.jpg" class="img-card img-fluid rounded-start"
                  alt="Mercure São Paulo Pinheiros">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  		<h5 class="card-title">Mercure São Paulo Pinheiros</h5>
                  		<div>
                  <p class="card-text">4,2 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-bed"></i> Hotel de 4 estrelas</li>
                        <li class="blog-post-text"><i class="fas fa-wifi"></i> Wifi gratuito</li>
                        <li class="blog-post-text"><i class="fas fa-car"></i> Estacionamento</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-coffee"></i> Café da manhã</li>
                        <li class="blog-post-text"><i class="fas fa-swimmer"></i> Piscina coberta</li>
                        <li class="blog-post-text"><i class="fas fa-snowflake"></i> Ar-condicionado</li>
                      </ul>
                    </div>
               		<p class="clearfix">
                     <span class="card-body float-left"><button type="button" class="px-4 btn btn-primary">Saiba
                     mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$299</span>
                </div>
              </div>
            </div>
          </div>
        </section>
<!--Fim seção 6-->

<!--Inicio seção 7-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/confort-ibirapuera.jpg" class="img-card img-fluid rounded-start"
                  alt="Confort Ibirapuera">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  		<h5 class="card-title">Confort Ibirapuera</h5>
                  		<div>
                  <p class="card-text">4,2 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-bed"></i> Hotel de 4 estrelas</li>
                        <li class="blog-post-text"><i class="fas fa-wifi"></i> Wifi gratuito</li>
                        <li class="blog-post-text"><i class="fas fa-car"></i> Estacionamento</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-coffee"></i> Café da manhã</li>
                        <li class="blog-post-text"><i class="fas fa-swimmer"></i> Piscina coberta</li>
                        <li class="blog-post-text"><i class="fas fa-snowflake"></i> Ar-condicionado</li>
                      </ul>
                    </div>
               		<p class="clearfix">
                     <span class="card-body float-left"><button type="button" class="px-4 btn btn-primary">Saiba
                     mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$206</span>
                </div>
              </div>
            </div>
          </div>
        </section>
<!--Fim seção 7-->

<!--Inicio seção 8-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/hilton-morumbi.jpg" class="img-card img-fluid rounded-start"
                  alt="Hilton Morumbi">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  		<h5 class="card-title">Hilton Morumbi</h5>
                  		<div>
                  <p class="card-text">4,5 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-bed"></i> Hotel de 4 estrelas</li>
                        <li class="blog-post-text"><i class="fas fa-wifi"></i> Wifi gratuito</li>
                        <li class="blog-post-text"><i class="fas fa-car"></i> Estacionamento</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-coffee"></i> Café da manhã</li>
                        <li class="blog-post-text"><i class="fas fa-swimmer"></i> Piscina coberta</li>
                        <li class="blog-post-text"><i class="fas fa-snowflake"></i> Ar-condicionado</li>
                      </ul>
                    </div>
               		<p class="clearfix">
                     <span class="card-body float-left"><button type="button" class="px-4 btn btn-primary">Saiba
                     mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$206</span>
                </div>
              </div>
            </div>
          </div>
        </section>
<!--Fim seção 8-->
<!--Inicio seção 9-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/la-residence-paulista-1.jpg" class="img-card img-fluid rounded-start"
                  alt="La Residence Paulista">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  		<h5 class="card-title">La Residence</h5>
                  		<div>
                  <p class="card-text">4,5 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-bed"></i> Hotel de 4 estrelas</li>
                        <li class="blog-post-text"><i class="fas fa-wifi"></i> Wifi gratuito</li>
                        <li class="blog-post-text"><i class="fas fa-car"></i> Estacionamento</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-coffee"></i> Café da manhã</li>
                        <li class="blog-post-text"><i class="fas fa-swimmer"></i> Piscina coberta</li>
                        <li class="blog-post-text"><i class="fas fa-snowflake"></i> Ar-condicionado</li>
                      </ul>
                    </div>
               		<p class="clearfix">
                     <span class="card-body float-left"><button type="button" class="px-4 btn btn-primary">Saiba
                     mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$206</span>
                </div>
              </div>
            </div>
          </div>
        </section>
<!--Fim seção 9-->
<!--Inicio seção 10-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/fasano-sao-paulo-1.jpg" class="img-card img-fluid rounded-start"
                  alt="Fasano São Paulo">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  		<h5 class="card-title">Fasano São Paulo</h5>
                  		<div>
                  <p class="card-text">4,5 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-bed"></i> Hotel de 5 estrelas</li>
                        <li class="blog-post-text"><i class="fas fa-wifi"></i> Wifi gratuito</li>
                        <li class="blog-post-text"><i class="fas fa-car"></i> Estacionamento</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-coffee"></i> Café da manhã</li>
                        <li class="blog-post-text"><i class="fas fa-swimmer"></i> Piscina coberta</li>
                        <li class="blog-post-text"><i class="fas fa-snowflake"></i> Ar-condicionado</li>
                      </ul>
                    </div>
               		<p class="clearfix">
                     <span class="card-body float-left"><button type="button" class="px-4 btn btn-primary">Saiba
                     mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$3.206</span>
                </div>
              </div>
            </div>
          </div>
        </section>
<!--Fim seção 10-->
 <!--Início de paginação-->
 <nav class="" aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
<!--Fim de paginação-->
    </div>
  </main>
    <div class=" py-5 container mapa">
      <div id="map"></div>
    </div>
  </div>
<section class="my-3 py-5">
  <div class="container">
    <h2 class=" py-2 h2__home">Opções de entretenimento</h2>
    <div class="row">
      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/em-familia.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de uma família dançando na Chuva">
        <h5 class="">Em família</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/com-os-amigos.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de amigos reunidos no bar">
        <h5 class="">Com os amigos</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/bom-para-criancas.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de crianças brincando na praia">
        <h5 class="">Para crianças</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/pet-friendly.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de cachorros Golden">
        <h5 class="">Pet Friendly</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/para-casal.jpeg" class="float-left mx-3 miniatura" alt="">
        <h5 class="">Para casal</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/para-solteiros.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de um homem sozinho no bar">
        <h5 class="">Para solteiros</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/para-adolescentes.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de amigas adolescentes">
        <h5 class="">Para adolescente</h5>
      </div>

      <div class=" my-2 col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <img src="assets/images/melhor-idade.jpeg" class="float-left mx-3 miniatura" alt="Ilustração de um casal de idosos">
        <h5 class="">Melhor idade</h5>
      </div>
    </div>
</section>

<section class="py-5">
  <div class="container">
    <h2 class="titulos___home h2__home py-2">Recomendado para você</h2>
    <p class="card-text">Atividades de acordo com seus interesses.</p>
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
<section class="container py5">
 	<h2 class="titulo__paginas text-center py-3">São Paulo: melhores atrações</h2>
 	<div class=" row">
 		<div class="col-12 col-sm-12 col-md-4">
 		
 		 <!--Início do slider-->
        <div id="mainSlider" class="carousel slide" data-ride="carousel" data-interval="0">
          <ol class="carousel-indicators">
            <li data-target="#mainSlider" data-slide-to="0" class="active"></li>
            <li data-target="#mainSlider" data-slide-to="1"></li>
            <li data-target="#mainSlider" data-slide-to="2"></li>
            <li data-target="#mainSlider" data-slide-to="3"></li>
          </ol>
          <div class="carousel-inner my-1">
            <div class="carousel-item active">
              <img src="assets/images/parque-do-ibirapuera-10.jpg" class="d-block w-100" alt="Masp por fora">
            </div>
            <div class="carousel-item">
              <img src="assets/images/parque-do-ibirapuera-11.jpg" class="d-block w-100" alt="Entrada do MASP">
            </div>
            <div class="carousel-item">
              <img src="assets/images/parque-do-ibirapuera-12.jpg" class="d-block w-100" alt="Exposição de quadros no Masp">
            </div>
            <div class="carousel-item">
              <img src="assets/images/parque-do-ibirapuera-13.jpg" class="d-block w-100" alt="Exposição de quadros no Masp">
            </div>
          </div>
          <a href="#mainSlider" class="carousel-control-prev" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a href="#mainSlider" class="carousel-control-next" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <div class="card-body">
      <h5 class="card-title">Parque Ibirapuera</h5>
      <p class="card-text">O parque mais conhecido de São Paulo oferece atrações como shows, exposições e feiras. Ele também abriga o MAM (Museu de Arte Moderna).</p>
      <p class="card-text"><small class="text-muted">Entrada gratuita</small></p>
    </div>
        <!--Fim do slider-->
 		</div>
  		<div class="col-12 col-sm-12 col-md-4">
 		 <!--Início do slider-->
        <div id="mainSlider2" class="carousel slide" data-ride="carousel" data-interval="0">
          <ol class="carousel-indicators">
            <li data-target="#mainSlider2" data-slide-to="0" class="active"></li>
            <li data-target="#mainSlider2" data-slide-to="1"></li>
            <li data-target="#mainSlider2" data-slide-to="2"></li>
            <li data-target="#mainSlider2" data-slide-to="3"></li>
          </ol>
          <div class="carousel-inner my-1">
            <div class="carousel-item active">
              <img src="assets/images/masp-5.jpg" class="d-block w-100" alt="Masp por fora">
            </div>
            <div class="carousel-item">
              <img src="assets/images/masp-6.jpg" class="d-block w-100" alt="Entrada do MASP">
            </div>
            <div class="carousel-item">
              <img src="assets/images/masp-7.jpg" class="d-block w-100" alt="Exposição de quadros no Masp">
            </div>
            <div class="carousel-item">
              <img src="assets/images/masp-8.jpg" class="d-block w-100" alt="Exposição de quadros no Masp">
            </div>
          </div>
          <a href="#mainSlider2" class="carousel-control-prev" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a href="#mainSlider2" class="carousel-control-next" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <div class="card-body">
      <h5 class="card-title">MASP</h5>
      <p class="card-text">Atração número 1 de São Paulo, o MASP reúne obras de Candido Portinari, Pablo Picasso, Vincent van Gogh, Anita Malfatti, entre outros grandes artistas.</p>
      <p class="card-text"><small class="text-muted">Entrada grátis às terças</small></p>
    </div>
        <!--Fim do slider-->
 		</div>
  		
  		<div class="col-12 col-sm-12 col-md-4">
  		
 		 <!--Início do slider-->
 		 
        <div id="mainSlider3" class="carousel slide" data-ride="carousel" data-interval="0">
          <ol class="carousel-indicators">
            <li data-target="#mainSlider3" data-slide-to="0" class="active"></li>
            <li data-target="#mainSlider3" data-slide-to="1"></li>
            <li data-target="#mainSlider3" data-slide-to="2"></li>
            <li data-target="#mainSlider3" data-slide-to="3"></li>
          </ol>
          <div class="carousel-inner my-1">
            <div class="carousel-item active">
              <img src="assets/images/beco-do-batman.jpg" class="d-block w-100" alt="Masp por fora">
            </div>
            <div class="carousel-item">
              <img src="assets/images/beco-do-batman-1.jpg" class="d-block w-100" alt="Entrada do MASP">
            </div>
            <div class="carousel-item">
              <img src="assets/images/beco-do-batman-2.jpg" class="d-block w-100" alt="Exposição de quadros no Masp">
            </div>
            <div class="carousel-item">
              <img src="assets/images/beco-do-batman-3.jpg" class="d-block w-100" alt="Exposição de quadros no Masp">
            </div>
          </div>
          <a href="#mainSlider3" class="carousel-control-prev" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a href="#mainSlider3" class="carousel-control-next" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <div class="card-body">
      <h5 class="card-title">Beco do Batman</h5>
      <p class="card-text">Localizado no bairro Vila Madalena, o lugar reúne muros de grafite com vários desenhos coloridos.</p>
      <p class="card-text"><small class="text-muted">Entrada grátis</small></p>
    </div>
        <!--Fim do slider-->
 		</div>
  		
 	</div>
 </div>
</section>
 
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
              <input type="password" class="form-control" id="CadastroSenha" placeholder="Senha">
            </div>
            <div class="py-2 form-check">
              <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
              <label class="legenda form-check-label" for="flexCheckChecked">
                Sim, quero receber informações sobre ofertas de viagem e novidades no Traveller. E sei que posso deixar
                de receber quando quiser.
              </label>
            </div>
            <button type="button" class="btn botao btn-lg btn-block botao">Inscreva-se</button>
            <small class="form-text text-muted text-center">Já tem conta?</small>
            <small class="form-text text-muted text-center"><a href="#" class="card-link" data-toggle="modal"
                data-target="#modalCadastro">Faça login</a> usando sua conta do Traveller.</small>
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
          <small class="form-text text-muted text-center"> Ao continuar, você concorda com os Termos de uso e confirma
            que leu nossa Política de privacidade e cookies.</small>
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