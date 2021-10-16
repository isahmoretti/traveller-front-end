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
  <link rel="stylesheet" href="assets/css/style_como_chegar.css">
    <script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAyxyzGDzrT9Wwg2bMUQQTM_WgG3jGm9mg&callback=initMap&libraries=&v=weekly"
    async></script>
	<script src="assets/js/script_geolocalizacao.js"></script>
  <title>Como chegar</title>
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
    <img src="assets/images/como-chegar.svg" class="card-img" alt="Ilustração de um carro na estrada">
    <h1 class="titulo__paginas text-center py-3">Como chegar</h1>
  </div>

  <!--Início de botoes-->
<section class="border container caixa_botoes">
  <div class="py-5 container">
    <div class="sidenav row justify-content-center">
      <a class="botao-topo my-2 py-3 mx-2 text-center col-sm-12 col-md-3 col-lg-3 botao-topo" href="#">Voo <i class="fas fa-plane"></i></i></a>
      <a class="botao-topo my-2 py-3 mx-2 text-center col-sm-12 col-md-3 col-lg-3 botao-topo" href="#">Ônibus <i class="fas fa-bus"></i></a>          
      <a class="botao-topo my-2 py-3 mx-2 text-center col-sm-12 col-md-3 col-lg-3 botao-topo" href="#" >Carro <i class="fas fa-car"></i></a>   
    </div>
  </div>
</section>
<!--Fim de botoes-->
  <!--Início Buscador-->
  <section class="container shadow-sm py-4 border pesquisa my-4">
    <div class="row d-flex justify-content-center g-3 py-3 px-4">
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <input type="text" class="form-control" placeholder="Origem" aria-label="Origem" id="origem">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <input type="text" class="form-control" placeholder="Destino" aria-label="Origem" id="destino">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <select class="form-select form-control" name="numeroPassageiros" id="numeroPassageiros">
          <option selected>Como será a viagem?</option>
          <option value="1">Ida e volta</option>
          <option value="2">Só de ida</option>
          <option value="3">Várias cidades</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <select class="form-select form-control" name="modeloCarro" id="modeloCarro">
          <option selected>Qual a classe?</option>
          <option value="1">Econômica</option>
          <option value="2">Econômica Premium</option>
          <option value="3">Executiva</option>
          <option value="4">Primeira</option>
        </select>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3 py-2 ">
        <input type="date" class="form-control campo_data" placeholder="Ida" aria-label="dataIda"
          id="dataIda">
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3 py-2 ">
        <input type="date" class="form-control campo_data" placeholder="Volta" aria-label="dataVolta"
          id="dataVolta">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <select class="form-select form-control" name="nomeAgencia" id="nomeAgencia">
          <option selected>Qual companhia?</option>
          <option value="1">Latam</option>
          <option value="2">Gol</option>
          <option value="3">Azul</option>
          <option value="4">Todas</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <select class="form-select form-control" name="classificarPor" id="classificarPor">
          <option selected>Escalas</option>
          <option value="1">Qualquer número de paradas</option>
          <option value="2">Somente sem paradas</option>
          <option value="3">Uma parada ou menos</option>
          <option value="4">Duas paradas ou menos</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <button class="botao btn busca_btn px-5" type="submit"><i class="fas fa-search"></i> Buscar</button>
      </div>
    </div>
    <div>
  </section>
  <!--Fim do buscador-->

 <main>
<div class="box container my-4">
  <!--Início da seção 1-->
<section class="container py-3">
  <div class="card-espaco card-horizontal mb-3 shadow-sm">
    <div class="row mx-2 my-2">
      <div class="justify-content-center col-3">
        <img src="assets/images/logo-latam.png" class="img-card img-thumbnail px-1 py-2 rounded-start"
            alt="Logo Latam">
            <p class="text-center">LATAM</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">13:00 / 13:55</h5>
        <p class="text-center text-muted">55 minutos</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">Sem escalas</h5>
        <p class=" text-center text-muted">Econômica / Airbus / A321LA</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">R$616</h5>
        <p class=" text-center text-muted">ida e volta</p>
        <button class="btn_oferta px-2 py-2">Ver oferta</button>
      </div>
  </div>
</section>
  <!--Fim da seção 1-->
  <!--Início seção 2-->
<section class="container py-3">
  <div class="card-espaco card-horizontal mb-3 shadow-sm">
    <div class="row mx-2 my-2">
      <div class="justify-content-center col-3">
        <img src="assets/images/logo-azul.png" class="img-card img-thumbnail px-1 py-2 rounded-start"
            alt="Logo Azul">
            <p class="text-center">AZUL</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">13:00 / 13:55</h5>
        <p class="text-center text-muted">55 minutos</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">Sem escalas</h5>
        <p class=" text-center text-muted">Econômica / Airbus / A321LA</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">R$616</h5>
        <p class=" text-center text-muted">ida e volta</p>
        <button class="btn_oferta px-2 py-2">Ver oferta</button>
      </div>
  </div>
</section>
<!---Fim da seção 2-->

<!--Início seção 3-->
<section class="container py-3">
  <div class="card-espaco card-horizontal mb-3 shadow-sm">
    <div class="row mx-2 my-2">
      <div class="justify-content-center col-3">
        <img src="assets/images/logo-latam.png" class="img-card img-thumbnail px-1 py-2 rounded-start"
            alt="Logo Latam">
            <p class="text-center">LATAM</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">13:00 / 13:55</h5>
        <p class="text-center text-muted">55 minutos</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">Sem escalas</h5>
        <p class=" text-center text-muted">Econômica / Airbus / A321LA</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">R$616</h5>
        <p class=" text-center text-muted">ida e volta</p>
        <button class="btn_oferta px-2 py-2">Ver oferta</button>
      </div>
  </div>
</section>
<!---Fim da seção 3-->

<!--Início seção 4-->

<section class="container py-3">
  <div class="card-espaco card-horizontal mb-3 shadow-sm">
    <div class="row mx-2 my-2">
      <div class="justify-content-center col-3">
        <img src="assets/images/logo-azul.png" class="img-card img-thumbnail px-1 py-2 rounded-start"
            alt="Logo Azul">
            <p class="text-center">AZUL</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">13:00 / 13:55</h5>
        <p class="text-center text-muted">55 minutos</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">Sem escalas</h5>
        <p class=" text-center text-muted">Econômica / Airbus / A321LA</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">R$616</h5>
        <p class=" text-center text-muted">ida e volta</p>
        <button class="btn_oferta px-2 py-2">Ver oferta</button>
      </div>
  </div>
</section>

<!---Fim da seção 4-->

<!--Início seção 5-->

<section class="container py-3">
  <div class="card-espaco card-horizontal mb-3 shadow-sm">
    <div class="row mx-2 my-2">
      <div class="justify-content-center col-3">
        <img src="assets/images/logo-gol.png" class="img-card img-thumbnail px-1 py-2 rounded-start"
            alt="Logo Gol">
            <p class="text-center">GOL</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">13:00 / 13:55</h5>
        <p class="text-center text-muted">55 minutos</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">Sem escalas</h5>
        <p class=" text-center text-muted">Econômica / Airbus / A321LA</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">R$616</h5>
        <p class=" text-center text-muted">ida e volta</p>
        <button class="btn_oferta px-2 py-2">Ver oferta</button>
      </div>
  </div>
</section>

<!---Fim da seção 5-->

<!--Início seção 6-->

<section class="container py-3">
  <div class="card-espaco card-horizontal mb-3 shadow-sm">
    <div class="row mx-2 my-2">
      <div class="justify-content-center col-3">
        <img src="assets/images/logo-latam.png" class="img-card img-thumbnail px-1 py-2 rounded-start"
            alt="Logo Latam">
            <p class="text-center">LATAM</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">13:00 / 13:55</h5>
        <p class="text-center text-muted">55 minutos</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">Sem escalas</h5>
        <p class=" text-center text-muted">Econômica / Airbus / A321LA</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">R$616</h5>
        <p class=" text-center text-muted">ida e volta</p>
        <button class="btn_oferta px-2 py-2">Ver oferta</button>
      </div>
  </div>
</section>

<!---Fim da seção 6-->

<!--Início seção 7-->

<section class="container py-3">
  <div class="card-espaco card-horizontal mb-3 shadow-sm">
    <div class="row mx-2 my-2">
      <div class="justify-content-center col-3">
        <img src="assets/images/logo-gol.png" class="img-card img-thumbnail px-1 py-2 rounded-start"
            alt="Logo Gol">
            <p class="text-center">GOL</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">13:00 / 13:55</h5>
        <p class="text-center text-muted">55 minutos</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">Sem escalas</h5>
        <p class=" text-center text-muted">Econômica / Airbus / A321LA</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">R$616</h5>
        <p class=" text-center text-muted">ida e volta</p>
        <button class="btn_oferta px-2 py-2">Ver oferta</button>
      </div>
  </div>
</section>

<!---Fim da seção 7-->

<!--Início seção 8-->

<section class="container py-3">
  <div class="card-espaco card-horizontal mb-3 shadow-sm">
    <div class="row mx-2 my-2">
      <div class="justify-content-center col-3">
        <img src="assets/images/logo-azul.png" class="img-card img-thumbnail px-1 py-2 rounded-start"
            alt="Logo Azul">
            <p class="text-center">AZUL</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">13:00 / 13:55</h5>
        <p class="text-center text-muted">55 minutos</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">Sem escalas</h5>
        <p class=" text-center text-muted">Econômica / Airbus / A321LA</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">R$616</h5>
        <p class=" text-center text-muted">ida e volta</p>
        <button class="btn_oferta px-2 py-2">Ver oferta</button>
      </div>
  </div>
</section>

<!---Fim da seção 8-->

<!--Início seção 9-->

<section class="container py-3">
  <div class="card-espaco card-horizontal mb-3 shadow-sm">
    <div class="row mx-2 my-2">
      <div class="justify-content-center col-3">
        <img src="assets/images/logo-latam.png" class="img-card img-thumbnail px-1 py-2 rounded-start"
            alt="Logo Latam">
            <p class="text-center">LATAM</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">13:00 / 13:55</h5>
        <p class="text-center text-muted">55 minutos</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">Sem escalas</h5>
        <p class=" text-center text-muted">Econômica / Airbus / A321LA</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">R$616</h5>
        <p class=" text-center text-muted">ida e volta</p>
        <button class="btn_oferta px-2 py-2">Ver oferta</button>
      </div>
  </div>
</section>

<!---Fim da seção 9-->

<!--Início seção 10-->

<section class="container py-3">
  <div class="card-espaco card-horizontal mb-3 shadow-sm">
    <div class="row mx-2 my-2">
      <div class="justify-content-center col-3">
        <img src="assets/images/logo-latam.png" class="img-card img-thumbnail px-1 py-2 rounded-start"
            alt="Logo Latam">
            <p class="text-center">LATAM</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">13:00 / 13:55</h5>
        <p class="text-center text-muted">55 minutos</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">Sem escalas</h5>
        <p class=" text-center text-muted">Econômica / Airbus / A321LA</p>
      </div>
      <div class="col-3 py-3">
        <h5 class="text-center">R$616</h5>
        <p class=" text-center text-muted">ida e volta</p>
        <button class="btn_oferta px-2 py-2">Ver oferta</button>
      </div>
  </div>
</section>
<!---Fim da seção 10-->
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
<div class="container bg-light">
    <p class="pt-2 text-muted small">© 2021 Traveller - Todos os direitos reservados</p>
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