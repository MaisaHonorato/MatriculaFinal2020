<%@page import="java.util.List"%>
<%@page import="controle.DAOAvaliacao"%>
<%@page import="modelo.Avaliacao"%>
<%@page import="controle.DAOMatricula"%>
<%@page import="modelo.Matricula"%>
<%@page import="controle.DAOPerfil"%>
<%@page import="modelo.Perfil"%>
<%@page import="modelo.Nivel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<a href="logout.jsp"> Sair </a> 
  <%
	Perfil perfil = (Perfil) session.getAttribute("logado");
	if(perfil.getNivel().equals("Secretaria")&& perfil.getNivel().equals("Professor")){

        //ABRIR A TELA PARA SECRETARIA && PROFESSOR
        }else{
        response.sendRedirect("login.jsp");// BLOQUEADO! 
        }
		
    %>
  <span> Olá <%=perfil.getUsuario().getPessoa().getNome()%> </span>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Lista de Avaliação</title>
  
</head>

<body>
    <h1 class="title-single">Avaliações</h1>
    <%
        int id = Integer.parseInt( request.getParameter("id") );
        Matricula matricula = DAOMatricula.localizarMatriculasId(id);
       for(Avaliacao a : DAOAvaliacao.listarAvaliacoes()){
                    if(a.getMatricula()==matricula){%>
          
    <div id="main" class="container-fluid">
    <div class="row">
        
        <div class="col-md-4">
        <p><strong>Descrição</strong></p>
        <p><%=a.getDescricao()%></p>
     </div>
        
      <div class="col-md-4">
        <p><strong>Id da Avaliação:</strong></p>
        <p><%=a.getId()%></p>
      </div>
        
    <div class="col-md-4">
        <p><strong>Matricula:</strong></p>
        <p><%=a.getMatricula()%>" "<%=matricula.getAluno()%></p>
    </div>
      
    <div class="col-md-4">
        <p><strong>Disciplina:</strong></p>
        <p><%=a.getDisciplina()%>" "<%=matricula.getSerie()%>" "<%=matricula.getTurma()%></p>
    </div>
      
    <div class="col-md-4">
        <p><strong>Nota:</strong></p>
        <p><%=a.getNota()%></p>
    </div>
       
      <%}%>  
   </div>
</div>
    
    <hr />
    
    <div id="actions" class="row">
      <div class="col-md-12 text-center">
        <a href="form-avaliação.html" class="btn btn-success">Fechar</a>
        <a href="edit-avaliacao.jsp" class="btn btn-outline-warning">Editar</a>
        
      </div>
    </div>
</body>

</html>