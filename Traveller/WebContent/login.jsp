<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
    integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!--Jquery-->

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    
    
    <!-- Meu CSS -->
      <link rel="stylesheet" href="./assets/css/style.css">
    
    <title>Traveller</title>
</head>
<body>
  <header class="p-4 text-light cor__fundo">
            <h3>Projeto Traveller</h3>
            <h5>Área de Login</h5>
        </header>
        <div class="container my-5">
            <div class="text-center">
                <img src="assets/images/passaport.svg" class="logo" alt="Logo do Traveller com passaporte">
            </div>
            <div class="row justify-content-center px-3">
                <div class="campo_login py-3 col-12 col-sm-12 col-md-6 align-self-center">
                    <form method="post" action="./login">
                        <div class="form-group">
                            <label for="email" class="titulos">Email</label>
                            <input type="email" class="form-control" id="email" name="email"
                                placeholder="Ex: seuemail@traveller.com.br" autofocus required>
                        </div>
                        <div class="form-group">
                            <label for="senha" class="titulos">Senha</label>
                            <div class="input-group mb-2">
                                <input type="password" class="form-control senha" id="senha" name="senha"
                                    placeholder="Ex: sua senha" required>
                                <div class="input-group-prepend">
                                    <div class="input-group-text"> <img src="assets/images/visibilidade.png"
                                            class="pointer visibilidade" alt="Imagem para exibir senha">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="botao_login btn">Efetuar Login <span
                                class="fas fa-paper-plane"></span></button>
                    </form>
                </div>
            </div>
        </div>
        <script src="assets/js/exibir_senha.js"></script>   
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