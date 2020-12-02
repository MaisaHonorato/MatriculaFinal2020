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
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <title>Lista de Boletins</title>
        
    </head>
    <body>
        <jsp:include page="_topoSair.jsp"></jsp:include>
        <%
	Perfil perfil = (Perfil) session.getAttribute("logado");
	if(perfil == null)
		response.sendRedirect("login.jsp");
    %>
    <hr />
    
    <%  
               for(Diario d : DAODiario.listarDiarios()){ 
                    
           %>
           
      <div id="list" class="row">
      <div class="table-responsive col-md-12">
            <form >
        <div class="row">
        <div class="form-group col-md-4 text-success">
           <label for="Diario">Diario</label>
           <a><%=d.getId()%></a>
             </div>
             
        <div class="form-group col-md-4 text-success">
           <label for="Matricula">Matricula</label>
           <a><%=d.getMatriculas()%></a>
             </div>
                       
        <div class="form-group col-md-4 text-success">
           <label for="InputDatanasc">Data de Nascimento</label>
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
                            <select >
                                <option>
                                   <%=s.getDisciplinas()%> 
                                </option>
                            </select>
                        </div>
                        
                    </div>
                    <hr />
                     <%  
               for(Serie s : DAOSerie.listarSeries()){ 
                    if(d.getSerie().equals(s.getId())){
           %>
                    <div class="row">
                        <div class="form-group col-md-3 text-success">
                            <label for="Disciplina">Disciplina:</label>
                            <select >
                                <option>
                                   <%=s.getDisciplinas()%> 
                                </option>
                            </select>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <button type="submit" class="btn btn-warning" href="edit-aluno.jsp" id="editar">Editar</button>
                            <button type="submit" class="btn btn-default" href="view-aluno.jsp">Cancelar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <%}%>
        <script>
            $(".editar").click(function(){
        var nome = $(this).data('nome');
        var serie = $(this).data('serie');
        var turno = $(this).data('turno');
            });
            
        </script>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>


