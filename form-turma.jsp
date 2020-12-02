<%@page import="controle.DAOTurma"%>
<%@page import="modelo.Turma"%>
<%@page import="modelo.Turno"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="add-turma.jsp" method="get">
	<label for="Nome">Nome:</label> <input type="text" name="nome"/> <br/>
    <label for="Sala">Sala:</label> <input type="number" name="sala"/> <br/>
    
    <label for="Turno">Turno:</label>   //Enum
	<select name="turno">
		
			<option value="<%=valor%>">  </option>
	
	</select> <input type="submit" value="Enviar (input)">
</form> <br/>

<a href="form-turma.jsp"> Adicionar Turma. </a>