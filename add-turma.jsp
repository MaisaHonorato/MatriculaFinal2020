<%@page import="controle.DAOTurma "%>
<%@page import="modelo.Turma"%>
<%@page import="modelo.Turno"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar turma</title>
</head>
<body>

<%
	String nome = request.getParameter("nome");
	int sala = Integer.parseInt(request.getParameter("sala"));
        Turno turno = request.getAuthType("turno");  //ENUM
        
        
        Turma turma = new Turma(nome, sala, turno);
	
	
        DAOTurma.salvarTurma(turma);
        
	
	response.sendRedirect("listar-turma.jsp");
	
%>

<h2><%=nome%></h2>

</body>
</html>