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
   <script src="assets/js/script_gastronomia.js"></script>
  <title>Gastronomia</title>
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
  <div>
    <img src="assets/images/gastronomia.svg" class="card-img" alt="Ilustração de um casal no restaurante">
    <h1 class="titulo__paginas text-center py-3">Gastronomia</h1>
  </div>

  <!--Início Buscador-->
  <section class="my-5 container shadow-sm py-4 border pesquisa">
    <div class="row d-flex justify-content-center g-3 py-3 px-4">
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <input type="text" class="form-control" placeholder="Cidade" aria-label="nomeRestaurante" id=nomeCidade">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <input type="text" class="form-control" placeholder="Nome do restaurante" aria-label="nomeRestaurante" id=nomeRestaurante">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <select class="form-select form-control" name="tipoEstabelecimento" id="tipoEstabelecimento">
          <option selected>Tipo de estabelecimento</option>
          <option value="1">Restaurante</option>
          <option value="2">Bar</option>
          <option value="3">Padaria</option>
          <option value="4">Café</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <select class="form-select form-control" name="modeloCarro" id="modeloCarro">
          <option selected>Tipo de cozinha</option>
          <option value="1">Sul-americana</option>
          <option value="2">Pizza</option>
          <option value="3">Japonesa</option>
          <option value="4">Árabe</option>
          <option value="5">Italiana</option>
          <option value="6">Espanhola</option>
          <option value="7">Todas</option>
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
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/barbacoa-1.jpg" class="img-card img-fluid rounded-start"
                  alt="Barbacoa">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Barbacoa</h5>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-utensils"></i> Churrascaria</li>
                        <li class="blog-post-text"><i class="fas fa-couch"></i> Espaço aconchegante</li>
                        <li class="blog-post-text"><i class="fas fa-wine-glass-alt"></i> Ótimos vinhos</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-drumstick-bite"></i> Cortes selecionados</li>
                        <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$ 40 até R$ 160</li>
                        <li class="blog-post-text"><i class="fas fa-users"></i> Bom para famílias</li>
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
<!--Inicio seção 2-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/espetaria-tia-tia.jpg" class="img-card img-fluid rounded-start"
                  alt="Espetaria Tiá Tiá">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Espetaria Tiá Tiá</h5>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-utensils"></i> Oriental</li>
                        <li class="blog-post-text"><i class="fas fa-couch"></i> Espaço aconchegante</li>
                        <li class="blog-post-text"><i class="fas fa-wine-glass-alt"></i> Ótimos vinhos</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-drumstick-bite"></i> Peça o yakissoba</li>
                        <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$ 40 até R$ 160</li>
                        <li class="blog-post-text"><i class="fas fa-users"></i> Bom para famílias</li>
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
<!--Fim seção 2-->

<!--Inicio seção 3-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/a-casa-do-porco.jpg" class="img-card img-fluid rounded-start"
                  alt="A Casa do Porco">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">A Casa do Porco</h5>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-utensils"></i> Carne de suina</li>
                        <li class="blog-post-text"><i class="fas fa-couch"></i> Ambiente divertido</li>
                        <li class="blog-post-text"><i class="fas fa-wine-glass-alt"></i> Chef Jefferson Rueda</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-drumstick-bite"></i> Peça o Porco Sanzé</li>
                        <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$ 40 até R$ 160</li>
                        <li class="blog-post-text"><i class="fas fa-users"></i> Bom para famílias</li>
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
<!--Fim seção 3-->

<!--Inicio seção 4-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/dom.jpg" class="img-card img-fluid rounded-start"
                  alt="D.O.M.">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">D.O.M.</h5>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-utensils"></i> Contemporânea</li>
                        <li class="blog-post-text"><i class="fas fa-couch"></i> Ambiente sofisticado</li>
                        <li class="blog-post-text"><i class="fas fa-wine-glass-alt"></i> Chef Alex Atala</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-star"></i> Michelin</li>
                        <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$640 a R$990</li>
                        <li class="blog-post-text"><i class="fas fa-users"></i> Bom para famílias</li>
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
<!--Fim seção 4-->

<!--Inicio seção 5-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/purana.jpg" class="img-card img-fluid rounded-start"
                  alt="Purana">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Purana</h5>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-utensils"></i> Vegana</li>
                        <li class="blog-post-text"><i class="fas fa-couch"></i> Ambiente aconchegante</li>
                        <li class="blog-post-text"><i class="fas fa-wine-glass-alt"></i> Chef  Alana Rox</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-drumstick-bite"></i> Peça o risoto da casa</li>
                        <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$40 a R$190</li>
                        <li class="blog-post-text"><i class="fas fa-users"></i> Bom para famílias</li>
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
<!--Fim seção 5-->

<!--Inicio seção 6-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/rinconcito-peruano.jpg" class="img-card img-fluid rounded-start"
                  alt="Rinconcito Peruano">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Rinconcito Peruano</h5>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-utensils"></i> Peruana</li>
                        <li class="blog-post-text"><i class="fas fa-couch"></i> Ambiente aconchegante</li>
                        <li class="blog-post-text"><i class="fas fa-wine-glass-alt"></i> Chef  Edgar Villar</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-drumstick-bite"></i> Peça o ceviche</li>
                        <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$40 a R$190</li>
                        <li class="blog-post-text"><i class="fas fa-users"></i> Bom para famílias</li>
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
<!--Fim seção 6-->

<!--Inicio seção 7-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/consulado-da-bahia.jpg" class="img-card img-fluid rounded-start"
                  alt="Consulado da Bahia">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Consulado da Bahia</h5>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-utensils"></i> Baiana</li>
                        <li class="blog-post-text"><i class="fas fa-couch"></i> Ambiente aconchegante</li>
                        <li class="blog-post-text"><i class="fas fa-wine-glass-alt"></i> Serve drinks</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-drumstick-bite"></i> Peça o acarajé</li>
                        <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$30 a R$100</li>
                        <li class="blog-post-text"><i class="fas fa-users"></i> Bom para famílias</li>
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
<!--Fim seção 7-->

<!--Inicio seção 8-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/general-prime-burger.jpg" class="img-card img-fluid rounded-start"
                  alt="General Prime Burger">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">General Prime Burger</h5>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-utensils"></i> Hamburgueria</li>
                        <li class="blog-post-text"><i class="fas fa-couch"></i> Ambiente aconchegante</li>
                        <li class="blog-post-text"><i class="fas fa-ice-cream"></i> Serve sobremesas</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-drumstick-bite"></i> Peça o Caprese</li>
                        <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$30 a R$100</li>
                        <li class="blog-post-text"><i class="fas fa-users"></i> Bom para famílias</li>
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
<!--Fim seção 8-->
<!--Inicio seção 9-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/aboud-shawarma.jpg" class="img-card img-fluid rounded-start"
                  alt="Aboud Shawarma">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Aboud Shawarma</h5>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-utensils"></i> Árabe</li>
                        <li class="blog-post-text"><i class="fas fa-couch"></i> Ambiente divertido</li>
                        <li class="blog-post-text"><i class="fas fa-wine-glass-alt"></i> Ótimos vinhos</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-drumstick-bite"></i> Peça o shawarma</li>
                        <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$20</li>
                        <li class="blog-post-text"><i class="fas fa-users"></i> Bom para famílias</li>
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
<!--Fim seção 9-->
<!--Inicio seção 10-->
<section class="py-3">
  <div class="card-espaco card mb-3 shadow-sm" id="boxcard" style="max-width: 760px;">
    <div class="row g-0">
      <div class="col-md-4">
         <img src="assets/images/famiglia-mancini.jpg" class="img-card img-fluid rounded-start"
                  alt="Famiglia Mancini">
      </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Famiglia Mancini</h5>
                  <p class="card-text">4,6 <i class="estrela fas fa-star"></i><a class="card-link" href="#"> (5.034
                      avaliações)</a>
                    <div class="float-left">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-utensils"></i> Italiana</li>
                        <li class="blog-post-text"><i class="fas fa-couch"></i> Ambiente aconchegante</li>
                        <li class="blog-post-text"><i class="fas fa-ice-cream"></i> Serve sobremesas</li>
                      </ul>
                    </div>
                    <div class="float-right">
                      <ul>
                        <li class="blog-post-text"><i class="fas fa-drumstick-bite"></i> Peça a pizza</li>
                        <li class="blog-post-text"><i class="fas fa-money-bill-wave"></i> R$50 a R$120</li>
                        <li class="blog-post-text"><i class="fas fa-users"></i> Bom para famílias</li>
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