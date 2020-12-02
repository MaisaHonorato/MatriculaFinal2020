<%@page import="controle.DAOAluno"%>
<%@page import="modelo.Aluno"%>
<%@page import="controle.DAOPessoa "%>
<%@page import="modelo.Pessoa"%>
<%@page import="controle.DAOEndereco "%>
<%@page import="modelo.Endereco"%>
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
	
        String rg = request.getParameter("rg");
        String datanasc = request.getParameter("datanasc");
        
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
        
        Aluno aluno = new Aluno(rg, datanasc,  nome, cpf, email, celular,cep, rua, numero, bairro, cidade, estado);
	
	DAOAluno.inserirAluno(aluno);
	
	response.sendRedirect("listar-aluno.jsp");
	
%>

<h2><%=nome%></h2>

</body>
</html>