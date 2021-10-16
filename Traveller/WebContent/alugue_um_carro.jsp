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
   <script src="assets/js/script_alugue_um_carro.js"></script>
  <title>Alugue seu carro</title>
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
    <img src="assets/images/alugue-seu-carro-1.svg" class="card-img" alt="Ilustração de um carro na estrada">
    <h1 class="titulo__paginas text-center py-3">Alugue seu carro</h1>
  </div>

  <!--Início Buscador-->
  <section class="container shadow-sm py-4 border pesquisa">
    <div class="row d-flex justify-content-center g-3 py-3 px-4">
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <input type="text" class="form-control" placeholder="Origem" aria-label="Origem" id="origem">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <select class="form-select form-control" name="numeroPassageiros" id="numeroPassageiros">
          <option selected>Quantos passageiros?</option>
          <option value="1">de 1 a 2 passageiros</option>
          <option value="2">de 3 a 5 passageiros</option>
          <option value="3">de 6 ou mais passageiros</option>
        </select>
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 py-2">
        <select class="form-select form-control" name="modeloCarro" id="modeloCarro">
          <option selected>Qual o modelo?</option>
          <option value="1">Pequeno</option>
          <option value="2">Médio</option>
          <option value="3">Grande</option>
          <option value="4">SUV</option>
          <option value="5">Van</option>
          <option value="6">Picape</option>
        </select>
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3 py-2 ">
        <input type="date" class="form-control campo_data" placeholder="Retirada" aria-label="dataRetirada"
          id="dataRetirada">
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3 py-2 ">
        <input type="time" class="form-control campo_horario py-2" placeholder="Horário de retirada"
          aria-label="horarioRetirada" id="horarioRetirada">
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3 py-2 ">
        <input type="date" class="form-control campo_data" placeholder="Devolução" aria-label="dataDevolucao"
          id="dataDevolucao">
      </div>
      <div class="col-6 col-sm-6 col-md-4 col-lg-3 py-2">
        <input type="time" class="form-control campo_horario py-2" placeholder="Horário de devolução"
          aria-label="horarioDevolucao" id="horarioDevolucao">
      </div>
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 py-2">
        <select class="form-select form-control" name="nomeAgencia" id="nomeAgencia">
          <option selected>Qual agência?</option>
          <option value="1">Unidas</option>
          <option value="2">Hertz</option>
          <option value="3">Localiza</option>
          <option value="4">Movida</option>
          <option value="5">Avis</option>
          <option value="6">Foco</option>
          <option value="7">Todas as marcas</option>
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

  <div class="pai container my-5">
    <div class="box">
       <!--Início do conteúdo principal-->
  <main>
<!--Inicio da seção 1-->
<!--Inicio da seção 1-->
    <section class="container py-3">
      <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
        <div class="row g-0">
          <div class="col-md-4">
            <img src="assets/images/vw-up.png" class="img-card img-fluid px-1 rounded-start"
              alt="Volkswagen up!">
              <img  class="py-2 px-1 icon_agencia" src="assets/images/movida.png" alt="Logo da Movida">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
                class="far fa-bookmark"></i></span>
                <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
                  class="far fa-heart"></i></span>
              <h5 class="card-title">Volkswagen up!</h5>
                <div class="float-left">
                  <ul>
                    <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                    <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                    <li class="blog-post-text"><i class="fas fa-code-branch"></i></i> Manual</li>
                  </ul>
                </div>
                <div class="float-right">
                  <ul>
                    <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i> 2 malas grandes</li>
                    <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                    <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
                  </ul>
                </div>
                <div class="">
                  <span class="card-body float-left blog-post-preco"><button type="button"
                      class="px-4 btn btn-primary">Saiba
                      mais</button></span>
                      <span class="card-body float-right blog-post-preco">R$416</span>
                </div>
            </div>
          </div>
        </div>
      </div>
    </section>   
    <!--Fim da seção 1--> 
<!--Inicio seção 2-->
<section class="container py-3">
    <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
      <div class="row g-0">
        <div class="col-md-4">
          <img src="assets/images/fiat-mobi.png" class="img-card img-fluid px-1 rounded-start"
            alt="Fiat Mobi">
            <img  class="py-2 px-1 icon_agencia" src="assets/images/localiza.png" alt="Logo da Movida">
        </div>
        <div class="col-md-8">
          <div class="card-body">
            <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
              class="far fa-bookmark"></i></span>
              <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
                class="far fa-heart"></i></span>
            <h5 class="card-title">Fiat Mobi</h5>
              <div class="float-left">
                <ul>
                  <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                  <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                  <li class="blog-post-text"><i class="fas fa-code-branch"></i> Manual</li>
                </ul>
              </div>
              <div class="float-right">
                <ul>
                  <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i> 2 malas grandes</li>
                  <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                  <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
                </ul>
              </div>
              <div class="">
                <span class="card-body float-left blog-post-preco"><button type="button"
                    class="px-4 btn btn-primary">Saiba
                    mais</button></span>
                    <span class="card-body float-right blog-post-preco">R$300</span>
              </div>
          </div>
        </div>
      </div>
    </div>
  </section>   
<!--Fim seção 2-->

<!--Inicio seção 3-->
<section class="container py-3">
  <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/hb20.png" class="img-card img-fluid px-1 rounded-start"
          alt="Hyundai HB20">
          <img  class="py-2 px-1 icon_agencia" src="assets/images/avis.png" alt="Logo da Avis">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
            class="far fa-bookmark"></i></span>
            <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
              class="far fa-heart"></i></span>
          <h5 class="card-title">Hyundai HB20</h5>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                <li class="blog-post-text"><i class="fas fa-code-branch"></i> Manual</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i> 2 malas grandes</li>
                <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
              </ul>
            </div>
            <div class="">
              <span class="card-body float-left blog-post-preco"><button type="button"
                  class="px-4 btn btn-primary">Saiba
                  mais</button></span>
                  <span class="card-body float-right blog-post-preco">R$300</span>
            </div>
        </div>
      </div>
    </div>
  </div>
</section> 
<!--Fim seção 3-->

<!--Inicio seção 4-->
<section class="container py-3">
  <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/renault-kiwid.png" class="img-card img-fluid px-1 rounded-start"
          alt="Renault Kwid">
          <img  class="py-2 px-1 icon_agencia" src="assets/images/alamo.png" alt="Logo da Alamo">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
            class="far fa-bookmark"></i></span>
            <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
              class="far fa-heart"></i></span>
          <h5 class="card-title">Renault Kwid</h5>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                <li class="blog-post-text"><i class="fas fa-code-branch"></i> Manual</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i> 2 malas grandes</li>
                <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
              </ul>
            </div>
            <div class="">
              <span class="card-body float-left blog-post-preco"><button type="button"
                  class="px-4 btn btn-primary">Saiba
                  mais</button></span>
                  <span class="card-body float-right blog-post-preco">R$300</span>
            </div>
        </div>
      </div>
    </div>
  </div>
</section> 
<!--Fim seção 4-->

<!--Inicio seção 5-->
<section class="container py-3">
  <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/vw-up.png" class="img-card img-fluid px-1 rounded-start"
          alt="Volkswagen up!">
          <img  class="py-2 px-1 icon_agencia" src="assets/images/hertz.png" alt="Logo da Hertz">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
            class="far fa-bookmark"></i></span>
            <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
              class="far fa-heart"></i></span>
          <h5 class="card-title">Volkswagen up!</h5>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                <li class="blog-post-text"><i class="fas fa-code-branch"></i></i> Manual</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i>  malas grandes</li>
                <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
              </ul>
            </div>
            <div class="">
              <span class="card-body float-left blog-post-preco"><button type="button"
                  class="px-4 btn btn-primary">Saiba
                  mais</button></span>
                  <span class="card-body float-right blog-post-preco">R$416</span>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>   
<!--Fim seção 5-->

<!--Inicio seção 6-->
<section class="container py-3">
  <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/renault-logan.png" class="img-card img-fluid px-1 rounded-start"
          alt="Renault Kwid">
          <img  class="py-2 px-1 icon_agencia" src="assets/images/localiza.png" alt="Logo da Localiza">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
            class="far fa-bookmark"></i></span>
            <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
              class="far fa-heart"></i></span>
          <h5 class="card-title">Renault Logan</h5>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                <li class="blog-post-text"><i class="fas fa-code-branch"></i> Manual</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i> 2 malas grandes</li>
                <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
              </ul>
            </div>
            <div class="">
              <span class="card-body float-left blog-post-preco"><button type="button"
                  class="px-4 btn btn-primary">Saiba
                  mais</button></span>
                  <span class="card-body float-right blog-post-preco">R$300</span>
            </div>
        </div>
      </div>
    </div>
  </div>
</section> 
<!--Fim seção 6-->

<!--Inicio seção 7-->
<section class="container py-3">
  <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/hb20.png" class="img-card img-fluid px-1 rounded-start"
          alt="Hyundai HB20">
          <img  class="py-2 px-1 icon_agencia" src="assets/images/movida.png" alt="Logo da Avis">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
            class="far fa-bookmark"></i></span>
            <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
              class="far fa-heart"></i></span>
          <h5 class="card-title">Hyundai HB20</h5>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                <li class="blog-post-text"><i class="fas fa-code-branch"></i> Manual</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i> 2 malas grandes</li>
                <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
              </ul>
            </div>
            <div class="">
              <span class="card-body float-left blog-post-preco"><button type="button"
                  class="px-4 btn btn-primary">Saiba
                  mais</button></span>
                  <span class="card-body float-right blog-post-preco">R$300</span>
            </div>
        </div>
      </div>
    </div>
  </div>
</section> 
<!--Fim seção 7-->

<!--Inicio seção 8-->
<section class="container py-3">
  <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/fiat-mobi.png" class="img-card img-fluid px-1 rounded-start"
          alt="Fiat Mobi">
          <img  class="py-2 px-1 icon_agencia" src="assets/images/localiza.png" alt="Logo da Movida">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
            class="far fa-bookmark"></i></span>
            <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
              class="far fa-heart"></i></span>
          <h5 class="card-title">Fiat Mobi</h5>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                <li class="blog-post-text"><i class="fas fa-code-branch"></i> Manual</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i> 2 malas grandes</li>
                <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
              </ul>
            </div>
            <div class="">
              <span class="card-body float-left blog-post-preco"><button type="button"
                  class="px-4 btn btn-primary">Saiba
                  mais</button></span>
                  <span class="card-body float-right blog-post-preco">R$300</span>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>  
<!--Fim seção 6-->
<section class="container py-3">
  <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/renault-sandero (1).png" class="img-card img-fluid px-1 rounded-start"
          alt="Renault Sandero">
          <img  class="py-2 px-1 icon_agencia" src="assets/images/localiza.png" alt="Logo da Movida">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
            class="far fa-bookmark"></i></span>
            <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
              class="far fa-heart"></i></span>
          <h5 class="card-title">Renault Sandero</h5>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                <li class="blog-post-text"><i class="fas fa-code-branch"></i> Manual</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i> 2 malas grandes</li>
                <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
              </ul>
            </div>
            <div class="">
              <span class="card-body float-left blog-post-preco"><button type="button"
                  class="px-4 btn btn-primary">Saiba
                  mais</button></span>
                  <span class="card-body float-right blog-post-preco">R$300</span>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>  
<!--Fim seção 8-->
<!--Inicio seção 9-->
<section class="container py-3">
  <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/renault-kiwid.png" class="img-card img-fluid px-1 rounded-start"
          alt="Renault Kwid">
          <img  class="py-2 px-1 icon_agencia" src="assets/images/unidas.png" alt="Logo da Unidas">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
            class="far fa-bookmark"></i></span>
            <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
              class="far fa-heart"></i></span>
          <h5 class="card-title">Renault Kwid</h5>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                <li class="blog-post-text"><i class="fas fa-code-branch"></i> Manual</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i> 2 malas grandes</li>
                <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
              </ul>
            </div>
            <div class="">
              <span class="card-body float-left blog-post-preco"><button type="button"
                  class="px-4 btn btn-primary">Saiba
                  mais</button></span>
                  <span class="card-body float-right blog-post-preco">R$300</span>
            </div>
        </div>
      </div>
    </div>
  </div>
</section> 
<!--Fim seção 9-->
<!--Inicio seção 10-->
<section class="container py-3">
  <div class=" card-espaco card mb-3 shadow-sm" style="max-width: 800px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="assets/images/hb20.png" class="img-card img-fluid px-1 rounded-start"
          alt="Hyundai HB20">
          <img  class="py-2 px-1 icon_agencia" src="assets/images/movida.png" alt="Logo da Avis">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
            class="far fa-bookmark"></i></span>
            <span class=" btn-outline-secondary circulo py-1 px-3 mx-1 float-right border"><i
              class="far fa-heart"></i></span>
          <h5 class="card-title">Hyundai HB20</h5>
            <div class="float-left">
              <ul>
                <li class="blog-post-text"><i class="fas fa-check"></i> Cancelamento grátis</li>
                <li class="blog-post-text"><i class="fas fa-gas-pump"></i> Flex</li>
                <li class="blog-post-text"><i class="fas fa-code-branch"></i> Manual</li>
              </ul>
            </div>
            <div class="float-right">
              <ul>
                <li class="blog-post-text"><i class="fas fa-suitcase-rolling"></i> 2 malas grandes</li>
                <li class="blog-post-text"><i class="fas fa-door-closed"></i> 4 portas</li>
                <li class="blog-post-text"><i class="fas fa-user"></i> 5 passageiros</li>
              </ul>
            </div>
            <div class="">
              <span class="card-body float-left blog-post-preco"><button type="button"
                  class="px-4 btn btn-primary">Saiba
                  mais</button></span>
                  <span class="card-body float-right blog-post-preco">R$300</span>
            </div>
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