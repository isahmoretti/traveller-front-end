<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="ErroMSG" type="java.lang.String" scope="request"></jsp:useBean>
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
                <div class=" campo_login text-center py-5 px-5 col-12 col-sm-12 col-md-6 align-self-center">
        			<h3> <c:out value="${ErroMSG}"/></h3>
        		</div>
              </div>
           </div>
</body>
</html>