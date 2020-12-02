<%@page import="controle.DAOPerfil"%>
<%@page import="modelo.Perfil"%>
<%@page import="controle.DAOUsuario "%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.Nivel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Perfil do Usuario</title>
</head>
<body>

<%
	String nome = request.getParameter("nome");
        Nivel nivel = request.getParameter("nivel");  //Enum//
        
        int id= Integer.parseInt( request.getParameter("idusuario") );
        Usuario usuario = DAOUsuario.localizarUsuariosId( id );
	
        Perfil perfil = new Perfil(nome, nivel, usuario);
       
        DAOPerfil.salvarPerfil(perfil);
        
        response.sendRedirect("listar-perfil.jsp");
	
%>

<h2><%=nome%></h2>

</body>
</html>