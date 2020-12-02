<%@page import="controle.DAOFrequencia "%>
<%@page import="modelo.Frequencia"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String data = request.getParameter("data");
	int quantdeaula = Integer.parseInt(request.getParameter("quantdeaula"));
        boolean statsfreq =Boolean.parseBoolean( request.getParameter("statsfreq"));
        
        Frequencia frequencia = new Frequencia(data, quantdeaula, statsfreq);
        
	DAOFrequencia.inserirFrequencia(frequencia);
        
	response.sendRedirect("listar-frequencia.jsp");
	
%>

<h2><%=data%></h2>

</body>
</html>