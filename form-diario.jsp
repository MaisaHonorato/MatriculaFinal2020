<%@page import="controle.DAODiario"%>
<%@page import="modelo.Diario"%>
<%@page import="controle.DAOMatricula"%>
<%@page import="modelo.Matricula"%>
<%@page import="controle.DAODisciplina"%>
<%@page import="modelo.Disciplina"%>
<%@page import="controle.DAOFrequencia"%>
<%@page import="modelo.Frequencia"%>
<%@page import="controle.DAOAvaliacao"%>
<%@page import="modelo.Avaliacao"%>
<%@page import="controle.DAOProfessor"%>
<%@page import="modelo.Professor"%>
<%@page import="controle.DAOSerie"%>
<%@page import="modelo.Serie"%>
<%@page import="controle.DAOTurma"%>
<%@page import="modelo.Turma"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="add-diario.jsp" method="get">
    <label for="Descricao">Descriação:</label>
    <input type="text" name="descricao"/> <br/>
    
    <label for="Anoletivo">Ano Letivo:</label>
    <input type="number" name="anoletivo"/> <br/>
    
    <label for="Professor">Professor:</label>
    <select name="professor">
	<%for( Professor p : DAOProfessor.listarProfessores() ){%>
	<option value="<%=p.getId()%>">  <%=p.getNome()%> <%=p.getFormacao()%> </option><%}%>
    </select> <br/>
    
    <label for="Disciplina">Disciplina:</label>
    <select name="disciplina">
	<%for( Disciplina d : DAODisciplina.listarDisciplinas() ){%>
	<option value="<%=d.getId()%>">  <%=d.getNome()%> <%=d.getAnoletivo()%> 
        <%=d.getSerie()%></option><%}%>
    </select> <br/>
    
    <label for="Matricula">Matricula:</label>
    <select name="matricula>
	<%for( Matricula m : DAOMatricula.listarMatriculas() ){%>
	<option value="<%=m.getId()%>"> <%=m.getAluno().getNome()%> </option><%}%>
    </select> <br/>
    
    <label for="Serie">Serie:</label>
    <select name="serie">
	<%for( Serie s : DAOSerie.listarSeries() ){%>
	<option value="<%=s.getId()%>">  <%=s.getNome()%> <%=s.getAno()%> </option><%}%>
    </select> <br/>
    
    <label for="Turma">Turma:</label>
    <select name="disciplina">
	<%for( Turma tu : DAOTurma.listarTurmas() ){%>
	<option value="<%=tu.getId()%>">  <%=tu.getNome()%> <%=tu.getSala()%> 
        <%=tu.getTurno()%></option><%}%>
    </select> <br/>
    
    <label for="Avaliacao">Avaliação:</label>
    <select name="avaliacao>
	<%for( Avaliacao av : DAOAvaliacao.listarAvaliacoes() ){%>
	<option value="<%=av.getId()%>"> <%=av.getDisciplina()%> <%=av.getDescricao()%>
            <%=av.getNota()%> </option><%}%>
    </select> <br/>
    
    <input type="submit" value="Enviar (input)">
</form>
    
    