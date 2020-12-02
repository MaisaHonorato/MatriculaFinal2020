<%@page import="controle.DAOPerfil"%>
<%@page import="modelo.Perfil"%>
<%@page import="controle.DAOUsuario"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.Nivel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="add-perfil.jsp" method="get">
	
    <label for="Nivel">Nível:</label>	<select name="valor">
        <%for(SECRETARIA("Secretaria"), PROFESSOR("Professor"), ALUNO("Aluno")){%>
        <option value="<%=SECRETARIA("Secretaria"), PROFESSOR("Professor"), ALUNO("Aluno")%>"> 
        </select> <br/>
     <br/>                   */*enum*/*
     
	
	<label for="Usuario">Usuario:</label>
	<select name="usuario">
		<%for( Usuario u : DAOUsuario.listarUsuarios() ){%>
			<option value="<%=u.getId()%>"> <%=u.getPessoa()%>
                            <%=u.getLogin()%><%=u.getSenha()%>
                        </option>
		<%}%>
	</select> <br/>
       
	<input type="submit" value="Enviar (input)">
</form>

        <a href="form-perfil.jsp"> Adicionar Perfil. </a>