<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="controle.DAOAluno"%>
<%@page import="modelo.Aluno"%>
<%@page import="controle.DAOPessoa"%>
<%@page import="modelo.Pessoa"%>
<%@page import="controle.DAOPerfil"%>
<%@page import="modelo.Perfil"%>
<%@page import="controle.DAOEndereco"%>
<%@page import="modelo.Endereco"%>
<%@page import="controle.DAOSecretaria"%>
<%@page import="modelo.Secretaria"%>
<%@page import="modelo.Nivel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<a href="logout.jsp"> Sair </a> 
  <%
	Perfil perfil = (Perfil) session.getAttribute("logado");
	if(perfil.getNivel().equals("Secretaria")){

        //ABRIR A TELA PARA SECRETARIA
        }else{
        response.sendRedirect("login.jsp");// BLOQUEADO! 
        }
		
    %>
  <span> Olá <%=perfil.getUsuario().getPessoa().getNome()%> </span>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <title>Listar Alunos</title>
        
</head>

<body>
  <h1 class="title-single">Listar Somente Alunos</h1>
  <hr />
 
  <form >
   
        <%  
          DAOAluno dao = new DAOAluno();
          List<Aluno> alunos = dao.listarAlunos();
          for(Aluno a : alunos){ %>
            <label for="Id">Id:</label>
            <a><%=a.getId()%></a>
            
        <div class="form-group col-md-4 text-success">
          <label for="Nome">Nome:</label>
          <a><%=a.getNome()%></a>
        </div>
        
        <div class="form-group col-md-4 text-success">
          <label for="Datanasc">Data de Nascimento:</label>
          <a><%=a.getDatanasc()%></a>
        </div>
        
        <div class="form-group col-md-4 text-success">
          <label for="">Data de Nascimento</label>
          <a><%=a.getRg()%></a>
        </div>
                    

        <div class="row">
        <div class="form-group col-md-2 text-success">
          <label for="Cep">CEP:</label>
          <a><%=a.getEndereco().getCep()%></a>
             </div>

        <div class="form-group col-md-2 text-success">
         <label for="Logradouro">Rua:</label>
           <%=a.getEndereco().getRua()%>
            </div>

        <div class="form-group col-md-2 text-success">
         <label for="InputBairro">Bairro:</label>
           <%=a.getEndereco().getBairro()%>
             </div>

        <div class="form-group col-md-2 text-success">
         <label for="InputCidade">Cidade</label>
           <%=a.getEndereco().getCidade()%>
             </div>
             
        <div class="form-group col-md-2 text-success">
         <label for="InputEstado">Estado</label>
           <%=a.getEndereco().getEstado()%>
             </div>
        </div>
           <%}%>         
      <hr/>
        <div class="row">
        <div class="col text-center">
            <button type="submit" class="btn btn-warning" href="edit-aluno.jsp" id="editar">Editar</button>
            <button type="submit" class="btn btn-default" href="view-aluno.jsp">Cancelar</button>
        </div>
        </div>
      </form>
           
       <script>
            $(".editar").click(function(){
        var nome = $(this).data('nome');
        var rg = $(this).data('rg');
        var id = $(this).data('id');
            });
            
        </script>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
