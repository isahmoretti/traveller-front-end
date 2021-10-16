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
  <script src="assets/js/script_entretenimento.js"></script>

  <title>Entretenimento</title>
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
      <a href="index.jsp" class="navbar-brand">
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
            <a class="nav-link botao text-white m-1  text-center px-3" href="#" data-toggle="modal"
              data-target="#modalLogin">Login</a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!--Fim do menu-->
  <div>
    <img src="assets/images/entretenimento.svg" class="card-img" alt="Ilustração de um casal remando">
    <h1 class="text-center py-3">Entretenimento</h1>
  </div>

  <!--Início Buscador-->
  <section class="my-5 container shadow-sm py-4 border pesquisa">
    <div class="row d-flex justify-content-center g-3 py-3 px-4">
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <input type="text" class="form-control" placeholder="Cidade" aria-label="nomeRestaurante" id=nomeCidade">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <input type="text" class="form-control" placeholder="Nome da atração" aria-label="nomeAtracao" id=nomeAtracao">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <select class="form-select form-control" name="tipoAtividade" id="tipoAtividade">
          <option selected>Tipo</option>
          <option value="1">Esporte</option>
          <option value="2">Ecoturismo</option>
          <option value="3">Exposições</option>
          <option value="4">Festas populares</option>
          <option value="5">Feiras</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <select class="form-select form-control" name="modeloCarro" id="modeloCarro">
          <option selected>Público</option>
          <option value="1">Para crianças</option>
          <option value="2">Para adolescentes</option>
          <option value="3">Para adultos</option>
          <option value="4">Para terceira idade</option>
          <option value="4">Todos os públicos</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <select class="form-select form-control" name="classificarPor" id="classificarPor">
          <option selected>Classificar por</option>
          <option value="1">Relevância</option>
          <option value="2">Menor preço</option>
          <option value="3">Avaliação</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <button class="botao btn busca_btn px-5" type="submit"><i class="fas fa-search"></i> Buscar</button>
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
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/casa-de-pedra.jpg" class="img-card img-fluid rounded-start"
        alt="Menina escalando">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Casa de Pedra </h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i> Seg a Sex 7h às 22h</li>
                <li class="blog-post-text"><i class="fas fa-child"></i> Bom para crianças</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> Preço médio: R$80</li>
                <li class="blog-post-text"><i class="fas fa-user-friends"></i> Tem monitores</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section> 
    <!--Fim da seção 1--> 

  <!--Início seção 2-->
  <!--Inicio da seção 1-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/mega-roller-skate-park.jpg" class="img-card img-fluid rounded-start"
        alt="Mega Roller Skate Park">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Mega Roller Skate Park </h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i> Seg a Sex 7h às 22h</li>
                <li class="blog-post-text"><i class="fas fa-child"></i> Bom para crianças</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> Preço médio: R$80</li>
                <li class="blog-post-text"><i class="fas fa-user-friends"></i> Tem monitores</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section> 
  <!--Fim da seção 2-->
  <section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/zoologico-de-sao-paulo.jpg" class="img-card img-fluid rounded-start"
        alt="Zoológico de São Paulo">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Zoológico de São Paulo </h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i> Seg a Sex 9h às 17h</li>
                <li class="blog-post-text"><i class="fas fa-child"></i> Bom para crianças</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> Preço médio: R$80</li>
                <li class="blog-post-text"><i class="fas fa-otter"></i> 3.200 animais</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section> 
  <!--Início seção 3-->
   <section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/instituto-butantan.jpg" class="img-card img-fluid rounded-start"
        alt="Instituto Butantan">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Instituto Butantan </h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i> Seg a Sex 9h às 17h</li>
                <li class="blog-post-text"><i class="fas fa-microscope"></i> Biólogos à disposição</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$ 2,50/R$ 6,00</li>
                <li class="blog-post-text"><i class="fas fa-otter"></i> Serpentário</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section>
  <!--Fim da seção 3-->

  <!--Início seção 4-->
    <section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/jardim-botanico-de-sao-paulo.jpg" class="img-card img-fluid rounded-start"
        alt="Jardim Botânico de São Paulo">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Jardim Botânico de São Paulo</h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i> 9h às 17h</li>
                <li class="blog-post-text"><i class="fas fa-crow"></i> Animais soltos</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$ 5,00/R$ 10,00</li>
                <li class="blog-post-text"><i class="fas fa-apple-alt"></i> Área para piquenique</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section>
  <!--Fim da seção 4-->

  <!--Início seção 5-->
    <section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/praca-por-do-sol.jpg" class="img-card img-fluid rounded-start"
        alt="Praça Pôr do Sol">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Praça Pôr do Sol</h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i> Aberto sempre</li>
                <li class="blog-post-text"><i class="fas fa-sun"></i> Veja o pôr-do-sol</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> Gratuito</li>
                <li class="blog-post-text"><i class="fas fa-image"></i> Vista da cidade</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section>
  <!--Fim da seção 5-->
     <section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/galeria-do-rock.jpg" class="img-card img-fluid rounded-start"
        alt="Galeria do Rock">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Galeria do Rock</h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i> 9h às 19h</li>
                <li class="blog-post-text"><i class="fas fa-building"></i> Prédio icônico</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> Gratuito</li>
                <li class="blog-post-text"><i class="fas fa-image"></i> Vista da cidade</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section>

    <!--Início seção 6-->
         <section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/planetario-carmo.jpg" class="img-card img-fluid rounded-start"
        alt="Planetário do Carmo">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Planetário do Carmo</h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i> 9h às 17h</li>
                <li class="blog-post-text"><i class="fas fa-rocket"></i> Curso de astronomia</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> Gratuito</li>
                <li class="blog-post-text"><i class="fas fa-globe-europe"></i> Projeções</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section>
  <!--Fim da seção 6-->

  <!--Início seção 7-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/edificio-italia.jpg" class="img-card img-fluid rounded-start"
        alt="Edifício Itália">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Edifício Itália</h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i> 15h às 19h</li>
                <li class="blog-post-text"><i class="fas fa-image"></i> Vista panorâmica</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> Gratuito</li>
                <li class="blog-post-text"><i class="fas fa-building"></i> 42º andares</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section>
  <!--Fim da seção 7-->

  <!--Início seção 8-->
  <section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/livraria-cultura.jpg" class="img-card img-fluid rounded-start"
        alt="Livraria Cultura">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Livraria Cultura</h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i> 11h às 19h</li>
                <li class="blog-post-text"><i class="fas fa-coffee"></i> Café</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-child"></i> Bom para crianças</li>
                <li class="blog-post-text"><i class="fas fa-building"></i> 3 andares</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section>
  <!--Fim da seção 8-->

  <!--Início seção 9-->
    <section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/ifly-sao-paulo.jpg" class="img-card img-fluid rounded-start"
        alt="iFLY São Paulo">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">iFLY São Paulo</h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i>10:30 às 20:30</li>
                <li class="blog-post-text"><i class="fas fa-user-friends"></i> Tem monitores</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-child"></i> Bom para crianças</li>
                <li class="blog-post-text"><i class="fas fa-hard-hat"></i> Seguro</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section>
  <!--Fim da seção 9-->
  <!--Início seção 10-->
  <section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/farol-santander.jpg" class="img-card img-fluid rounded-start"
        alt="Farol Santander">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-2 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
          <span class=" py-2 btn-outline-secondary px-2 circulo float-right"><i
              class=" curtir far fa-heart"></i></span>
          <h5 class="card-title">Farol Santander</h5>
          <p class="card-text">5,0 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
              avaliações)</a>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-clock"></i>11h às 19h</li>
                <li class="blog-post-text"><i class="fas fa-camera-retro"></i></i> Vista panorâmica</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-building"></i> 161 metros de altura</li>
                <li class="blog-post-text"><i class="fas fa-image"></i> Várias exposições</li>
              </ul>
            </div>
            <span class="card-body float-right blog-post-preco"><button type="button"
                class="px-4 btn btn-primary">Saiba
                mais</button></span>
        </div>
      </div>
    </div>
  </div>
</section>
  <!--Fim da seção 10-->

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