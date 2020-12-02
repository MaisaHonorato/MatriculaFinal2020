<%@page import="controle.DAOMatricula"%>
<%@page import="modelo.Matricula"%>
<%@page import="controle.DAOAluno "%>
<%@page import="modelo.Aluno"%>
<%@page import="controle.DAOSerie "%>
<%@page import="modelo.Serie"%>
<%@page import="controle.DAOTurma "%>
<%@page import="modelo.Turma"%>
<%@page import="modelo.Turno"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Matricular Aluno</title>
</head>
<body>

<%
	String datamat = request.getParameter("datamat");
        boolean ativo = Boolean.parseBoolean(request.getParameter("ativo"));
	Date datamat = Date.valueOf(formatarData(request.getDatamat)) ;
        
        int id= Integer.parseInt( request.getParameter("idAluno") );
        Aluno aluno = DAOAluno.localizarAlunosId( idaluno );
        
        int id = Integer.parseInt( request.getParameter("idserie") );
        Serie serie = DAOSerie.localizarSeriesId( idserie );
        
        int id = Integer.parseInt( request.getParameter("idturma") );
        Turma idturma = DAOTurma.localizarTurmasId(id );
        
        int id = Integer.parseInt( request.getParameter("idturno") );  //ENUM//
        
        Matricula matricula = new Matricula(datamat,aluno,serie,turma,turno, ativo);
	
	DAOMatricula.salvarMatricula(matricula);
       
	response.sendRedirect("listar-matricula.jsp");
	
%>

<h2><%=ativo%></h2>

</body>
</html>