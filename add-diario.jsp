<%@page import="controle.DAODiario"%>
<%@page import="modelo.Diario"%>
<%@page import="controle.DAOPessoa "%>
<%@page import="modelo.Pessoa"%>
<%@page import="controle.DAODisciplina "%>
<%@page import="modelo.Disciplina"%>
<%@page import="controle.DAOFrequencia "%>
<%@page import="modelo.Frequencia"%>
<%@page import="controle.DAOProfessor "%>
<%@page import="modelo.Professor"%>
<%@page import="controle.DAOAvaliacao "%>
<%@page import="modelo.Avaliacao"%>
<%@page import="controle.DAOSerie "%>
<%@page import="modelo.Serie"%>
<%@page import="controle.DAOTurma "%>
<%@page import="modelo.Turma"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar Diario</title>
</head>
<body>

<%
	
        String descricao = request.getParameter("descricao");
        String dataletivo = request.getParameter("letivo");
int id = Integer.parseInt( request.getParameter("matricula") ); //Várias Matriculas em um Diario
int id = Integer.parseInt( request.getParameter("idavaliacao") );  //Várias Avaliacoes em um Diario
int id = Integer.parseInt( request.getParameter("idfrequencia") );  //Várias Frequencias em um Diario
int id = Integer.parseInt( request.getParameter("idprofessor") ); //Um Professor
int id = Integer.parseInt( request.getParameter("idturma") ); //Uma Turma
int id = Integer.parseInt( request.getParameter("iddisciplina") ); //Uma Disciplina
int id = Integer.parseInt( request.getParameter("idserie") ); //Uma Serie
        
        Matricula matricula = DAOMatricula.localizarMatriculasId(id );
        Avaliacao avaliacao = DAOAvaliacao.localizarAvaliacoesId(id );
        Frequencia frequencia = DAOFrequencia.localizarFrequenciasId(id );
        Professor professor = DAOProfessor.localizarProfessoresId( id );
        Turma turma = DAOTurma.localizarTurmasId(id );
	Disciplina disciplina = DAODisciplina.localizarDisciplinasId( id );
        Serie serie = DAOSerie.localizarSeriesId( id );
        
               
	Diario diario = new Diario( descricao, dataletivo, avaliacao, frequencia, disciplina,professor,serie, turma, matricula );
	
	DAODiario.inserirDiario( diario );
	
	response.sendRedirect("listar-diario.jsp");
%>

<h2><%=descricao%></h2>

</body>
</html>