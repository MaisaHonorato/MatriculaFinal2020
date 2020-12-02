<%@page import="controle.DAOPerfil"%>
<%@page import="modelo.Perfil"%>
<%@page import="modelo.Nivel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
       
 <!-- Bootstrap CSS File -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="extras/font-awesome.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet">
  <link href="css/ionicons.min.css" rel="stylesheet">
  <link href="css/owl.carousel.min.css" rel="stylesheet">
  <script src="extras/ionicons.js"></script>
  <link href="css/ionicons.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <script src="js/jquery.min.js"></script>
  <link href="login.css" rel="stylesheet">
    
   </head>
    <body>
        
    <div class="container" align="center">
     <div class="row">
       <div class="col">
         <body class="text-center">
           <form class="form-signin">
                  
    <h1 class="h3 mb-3 font-weight-normal">Faça login</h1>
                  
             <label for="inputEmail" class="sr-only">E-mail:</label>
               <input type="text" id="inputEmail" name=username class="form-control" placeholder="Matrícula" required autofocus>
             
             <label for="inputPassword" class="sr-only">Senha:</label>
               <input type="password" id="inputPassword" name=senha class="form-control" placeholder="Senha" required>
             
               <div class="checkbox mb-3">
                    <label>
                      <input type="checkbox" value="remember-me"> Lembrar de mim
                    </label>
                 
               </div>
                  
               <button class="btn btn-lg btn-success btn-block" type="submit">Entrar</button>
                  <p class="mt-5 mb-3 text-muted">&copy; 2020-2021</p>
                </form>
         </body>
            </div>
        </div>
    </div>

    <script>
    function Login(){
      var done=0;
      var nivel=document.login.nivel.value;
      nivel=nivel.toLowerCase();
      
      
            
      if (nivel=="Professor" ) { window.location="form-avaliacao.jsp"; done=1; }
      if (nivel=="Aluno" ) { window.location="form-boletim.jsp"; done=1; }
      if (nivel=="Secretaria" ) { window.location="form-aluno.jsp"; done=1; }
      if (done==0) { alert("login invalido!"); }
      }
          </script>


<script src="js/main.js"></script>
</body>
</html>
