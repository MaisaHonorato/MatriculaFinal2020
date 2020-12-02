<%@page import="controle.DAOSecretaria"%>
<%@page import="modelo.Secretaria"%>
<%@page import="controle.DAOPessoa "%>
<%@page import="modelo.Pessoa"%>
<%@page import="controle.DAOEndereco "%>
<%@page import="modelo.Endereco"%>
<%@page import="controle.DAOFuncionario "%>
<%@page import="modelo.Funcionario"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String dataAdmissao = request.getParameter("dataAdmissao");
	String cargo = request.getParameter("cargo");
        int salario = Integer.parseInt(request.getParameter("salario")); //Interface

	String nome = request.getParameter("nome");
	String cpf = request.getParameter("cpf");
        String email = request.getParameter("email");
	String celular = request.getParameter("celular");
        
        String cep  = request.getParameter("cep");
        String rua = request.getParameter("rua");
        String numero = request.getParameter("numero");
        String bairro = request.getParameter("bairro");
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("estado");
        
        
        Secretaria secretaria = new Secretaria( dataAdmissao, cargo, salario, nome,cpf, email,celular, cep, rua, numero, bairro, cidade, estado);
	
	
        DAOSecretaria.inserirSecretaria(secretaria);
        
	
	response.sendRedirect("listar-secretaria.jsp");
	
%>

<h2><%=nome%></h2>

</body>
</html>