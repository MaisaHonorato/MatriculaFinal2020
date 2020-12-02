<%@page import="controle.DAOUsuario"%>
<%@page import="modelo.Usuario"%>
<%@page import="controle.DAOPerfil "%>
<%@page import="modelo.Perfil"%>
<%@page import="controle.DAOPessoa "%>
<%@page import="modelo.Pessoa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar Usuario</title>
</head>
<body>

<%
	String login = request.getParameter("login");
	String senha = request.getParameter("senha");
        
        int id = Integer.parseInt( request.getParameter("idturma") );
        Perfil perfil = DAOPerfil.localizarPerfisId(id);
        
        int id = Integer.parseInt( request.getParameter("idpessoa") );
        Pessoa pessoa = DAOPessoa.localizarPessoasId(id);
        
        Usuario usuario = new Usuario(login,senha, perfil, pessoa);
       
	   
	DAOUsuario.inserirUsuario(usuario);
	
	response.sendRedirect("listar-usuario.jsp");
	
%>

<h2><%=login%></h2>

</body>
</html>