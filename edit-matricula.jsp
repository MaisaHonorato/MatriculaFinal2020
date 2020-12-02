<%@page import="java.util.Date"%>
<%@page import="controle.DAOMatricula"%>
<%@page import="modelo.Matricula"%>
<%@page import="controle.DAOPerfil"%>
<%@page import="modelo.Perfil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<meta charset="UTF-8">
<title>Editar Matrícula do Aluno</title>
</head>
<body>

<%
	//Coletou o ID do serviço
	int id = Integer.parseInt( request.getParameter("id") );
        Date datamat = Date.from(datamat);  //DATA ATUALIZADA
	Serie serie = request.getParameter("serie");
        Turma turma = request.getParameter("turma");
        Turno turno = request.getParameter("turno");
	boolean ativo = Boolean.parseBoolean( request.getParameter("ativo") );
	
	// Localizou o Serviço representado pelo ID
        Matricula matricula = DAOMatricula.localizarMatriculasId(id );
	matricula.setDatamat(datamat);
	matricula.setSerie(serie);
        matricula.setTurma(turma);
        matricula.setTurno(turno);
        matricula.setAtivo(ativo);
	
	DAOMatricula.updateMatricula(matricula);
	
	// Voltar para a listagem
	response.sendRedirect("listarServico.jsp");
%>

</body>
</html>