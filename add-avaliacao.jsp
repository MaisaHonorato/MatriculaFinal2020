<%@page import="controle.DAOAvaliacao"%>
<%@page import="modelo.Avaliacao"%>
<%@page import="controle.DAOMatricula "%>
<%@page import="modelo.Matricula"%>
<%@page import="controle.DAODisciplina "%>
<%@page import="modelo.Disciplina"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adiciona Avaliação</title>
</head>
<body>

<%
	
	double nota = Double.parseDouble( request.getParameter("nota") );
        String descricao = request.getParameter("descricao");
	int id = Integer.parseInt( request.getParameter("matricula") );
        int id = Integer.parseInt( request.getParameter("disciplina") );
        

	Matricula matricula = DAOMatricula.localizarMatriculasId(id );
        Disciplina disciplina = DAODisciplina.localizarDisciplinasId( id );
	
	// 2. Construir
	Avaliacao aval = new Avaliacao( nota, descricao, disciplina, matricula );
	
	// 3. Manipular
	DAOAvaliacao.inserirAvaliacao( aval );
	
	response.sendRedirect("listar-Avaliacao.jsp");
	
%>


<h2><%=descricao%></h2>

</body>
</html>