<%@page import="controle.DAOUsuario"%>
<%@page import="modelo.Usuario"%>
<%@page import="controle.DAOPerfil"%>
<%@page import="modelo.Perfil"%>
<%@page import="controle.DAOPessoa"%>
<%@page import="modelo.Pessoa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="add-usuario.jsp" method="get">
    
    <label for="Usuario">Usuario:</label>
	<select name="login">
		<%for( Pessoa p1 : DAOPessoa.listarPessoas() ){%>
			<option value="<%=p1.getId()%>"> <%=p1.getEmail()%> </option>
		<%}%>
	</select> <br/>
        
	<label for="Nickname">Usuario:</label> <input type="text" name="nickname"/> <br/>
    <label for="Senha">Senha:</label> <input type="password" name="senha"/> <br/>
    
    <label for="Perfil">Perfil:</label>
	<select name="perfil">
		<%for( Perfil p : DAOPerfil.listarPerfis() ){%>
			<option value="<%=p.getId()%>"> <%=p.getNivel()%> </option>
		<%}%>
	</select> <br/>
	
	<label for="Pessoa">Pessoa:</label>
	<select name="pessoa">
		<%for( Pessoa p2 : DAOPessoa.listarPessoas() ){%>
			<option value="<%=p2.getId()%>"> <%=p2.getNome()%> </option>
		<%}%>
	</select> <br/>

	<input type="submit" value="Enviar (input)">
</form>
<a href="form-usuario.jsp"> Adicionar Usuario. </a>
