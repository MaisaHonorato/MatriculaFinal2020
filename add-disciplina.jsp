<%@page import="controle.DAODisciplina"%>
<%@page import="modelo.Disciplina"%>
<%@page import="controle.DAOSerie "%>
<%@page import="modelo.Serie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Disciplina</title>
</head>
<body>

<%
	String nome = request.getParameter("nome");
	String anoletivo = request.getParameter("anoletivo");
        String quantdeaulabimestral = request.getParameter("quantdeaulabimestral");
        String quantdeaulanual = request.getParameter("quantdeaulanual");
        
	int id =Integer.parseInt( request.getParameter("idserie"));
        Serie serie = DAOSerie.localizarSeriesId( ID_SERIE );
        
        Disciplina disciplina = new Disciplina(nome, anoletivo, quantdeaulabimestral, quantdeaulanual, serie);
        	
        DAODisciplina.inserirDisciplina(disciplina);
        
	response.sendRedirect("listar-disciplina.jsp");
	
%>

<h2><%=nome%></h2>

</body>
</html>