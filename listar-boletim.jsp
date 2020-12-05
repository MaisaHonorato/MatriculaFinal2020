<%@page import="modelo.Avaliacao"%>
<%@page import="controle.DAOAvaliacao"%>
<%@page import="controle.DAOSerie"%>
<%@page import="modelo.Serie"%>
<%@page import="modelo.Perfil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="controle.DAOMatricula"%>
<%@page import="modelo.Matricula"%>
<%@page import="controle.DAODiario"%>
<%@page import="modelo.Diario"%>
<%@page import="modelo.Aluno"%>
<%@page import="modelo.Calculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<a href="logout.jsp"> Sair </a> 
  <%
	Perfil perfil = (Perfil) session.getAttribute("logado");
	if(perfil.getNivel().equals("Aluno") || perfil.getNivel().equals("Professor") || perfil.getNivel().equals("Secretaria")){
           %> <jsp:include page="_topoSair.jsp"></jsp:include><%
        //ABRIR A TELA PARA SECRETARIA OU PROFESSOR OU SECRETARIA
        } if(perfil == null) { //SE NÃO ESTIVER LOGADO%>  
            <jsp:include page="_topoEntrar.jsp"></jsp:include>
        <%
        response.sendRedirect("login.jsp");// BLOQUEADO! 
        }
		
    %>
  <span> Olá <%=perfil.getUsuario().getPessoa().getNome()%> </span>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
       
        <title>Lista de Boletim</title>
        
    </head>
    <body>
      
    <hr />
    
    <%  
               for(Diario d : DAODiario.listarDiarios()){ 
                    
           %>
           
      <div id="list" class="row">
      <div class="table-responsive col-md-12">
            <form >
        <div class="row">
        <div class="form-group col-md-4 text-success">
           <label for="Diario">Diario:</label>
           <a><%=d.getId()%></a>
             </div>
             
        <div class="form-group col-md-4 text-success">
           <label for="Matricula">Matricula:</label>
           <a><%=d.getMatriculas()%></a>
             </div>
                       
        <div class="form-group col-md-4 text-success">
           <label for="Datanasc">Data de Nascimento:</label>
           <a><%=d.getDisciplina()%></a>
             </div>
        </div>
           <%  
               for(Matricula m : DAOMatricula.listarMatriculas()){ 
                    if(d.getMatriculas().equals(m.getId())){
                        %>
                        
      <div class="row">
      <div class="form-group col-md-2 text-success">
            <label for="Nome">Nome:</label>
            <a><%=m.getAluno()%></a>
      </div>

      <div class="form-group col-md-2 text-success">
            <label for="Serie">Série:</label>
            <a><%=m.getSerie()%></a>
      </div>

      <div class="form-group col-md-2 text-success">
            <label for="Turma">Turma:</label>
            <a><%=m.getTurma()%></a>                
      </div>

      <div class="form-group col-md-2 text-success">
            <label for="Turno">Turno:</label>
            <a><%=m.getTurno()%></a>                
      </div>
   </div>
                            
                   <%  
               for(Serie s : DAOSerie.listarSeries()){ 
                    if(d.getSerie().equals(s.getId())){
           %>
       <div class="row">
       <div class="form-group col-md-3 text-success">
            <label for="Disciplina">Disciplina:</label>
            
                <option>
                <%=s.getDisciplinas()%> 
                </option>
           
       </div>
       </div>
    <hr />
                     <%  
               for(Avaliacao av : DAOAvaliacao.listarAvaliacoes()){ 
                    if(av.getBimestre()==1 && av.getDisciplina().equals(s.getDisciplinas())){
           %>
           
        <div class="row">
        <div class="form-group col-md-3 text-success">
            <label for="Avaliacao">Nota Final:</label>
            <%--Função Calculo--%>
                                <a><%=notafinal()%></a> 
                                
        </div>
        </div>
        
        <div class="row">
        <div class="form-group col-md-3 text-success">
            <label for="Situacao">Situacao:</label>
            <%--Função Calculo--%>
            <a> <%=valor%></a>
                                
        <div class="row">
        <div class="col text-center">
            
             <% if( perfil.getNivel().equals("Secretaria") ){%>
             
                <button type="submit" class="btn btn-warning" href="edit-boletim.jsp" id="editar">Editar</button>
             
                <%} if( perfil.getNivel().equals("Aluno") && m.getAluno().getNome().equals(perfil.getUsuario().getPessoa().
                    getNome()) ){%>
             
                <button type="submit" class="btn btn-default" href="view-boletim.jsp">Fechar</button>
                
             <%}%>
        </div>
        </div>
   </form>
        </div>
        </div>
        <%}%>
 </body>
</html>


