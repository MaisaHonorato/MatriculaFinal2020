<%@page import="java.util.ArrayList"%>
<%@page import="controle.DAOSerie"%>
<%@page import="modelo.Serie"%>
<%@page import="controle.DAODisciplina "%>
<%@page import="modelo.Disciplina"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar Serie</title>
</head>
<body>

<%
	String nome = request.getParameter("nome");
	String ano = request.getParameter("ano");
        
        int id = Integer.parseInt( request.getParameter("iddisciplina") ); //Várias Disciplinas
        Disciplina disciplina = DAODisciplina.localizarDisciplinasId( id );
        
        Serie serie = new Serie(nome, ano, disciplina);
	
	DAOSerie.inserirSerie(serie);
	
	response.sendRedirect("listar-serie.jsp");
	
%>

<h2><%=nome%></h2>

</body>
</html>