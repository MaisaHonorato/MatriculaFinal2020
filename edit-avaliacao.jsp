<%@page import="controle.DAOAvaliacao"%>
<%@page import="modelo.Avaliacao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Avaliação</title>
</head>
<body>

<%
	int id = Integer.parseInt( request.getParameter("id") );
        String descricao = request.getParameter("descricao");
	Double nota = Double.parseDouble(request.getParameter("nota"));
	
	Avaliacao avaliacao = DAOAvaliacao.localizarAvaliacoesId(id);
	avaliacao.setDescricao(descricao);
        avaliacao.setNota(nota);
	DAOAvaliacao.inserirAvaliacao(avaliacao);
	
	response.sendRedirect("listar-avaliacao.jsp");
%>

</body>
</html>