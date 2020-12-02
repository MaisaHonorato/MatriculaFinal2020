<%@page import="controle.DAOPessoa"%>
<%@page import="modelo.Pessoa"%>
<%@page import="controle.DAOUsuario"%>
<%@page import="modelo.Usuario"%>
<%@page import="controle.DAOPerfil"%>
<%@page import="modelo.Perfil"%>
<%@page import="modelo.Nivel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
	String nickname = request.getParameter("nickname");
	String senha = request.getParameter("senha");
	
	Usuario usuarioDB = DAOUsuario.localizarUsuariosNome(nickname);
	
	if( usuarioDB != null ){
		if( usuarioDB.getSenha().equals( senha )){
			session.setAttribute("logado", usuarioDB);
			response.sendRedirect("index.jsp");
		}else
			response.sendRedirect("form-login.jsp");
	}else
		response.sendRedirect("form-login.jsp");
%>
    </body>
</html>
