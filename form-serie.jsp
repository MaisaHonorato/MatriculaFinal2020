<%@page import="controle.DAOSerie"%>
<%@page import="modelo.Serie"%>
<%@page import="controle.DAODisciplina"%>
<%@page import="modelo.Disciplina"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="add-serie.jsp" method="get">
	<label for="Nome">Nome:</label> <input type="text" name="nome"/> <br/>
    <label for="Anoletivo">Ano Letivo:</label> <input type="number" name="ano"/> <br/>
    
    <label for="Disciplina">Disciplina:</label>
	<select name="disciplina">
		<%for(Disciplina d : DAODisciplina.listarDisciplinas() ){%>
			<option value="<%=d.getId()%>"> <%=d.getNome()%> </option>
		<%}%>
	</select> <br/>  <input type="submit" value="Enviar (input)">
</form> 

<a href="form-serie.jsp"> Adicionar Série. </a>