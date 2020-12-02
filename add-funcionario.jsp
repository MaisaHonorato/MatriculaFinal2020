<%@page import="controle.DAOFuncionario"%>
<%@page import="modelo.Funcionario"%>
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
<title>Cadastro de Funcionario</title>
</head>
<body>

<%
	String dataAdmissao = request.getParameter("dataAdmissao");
	String cargo = request.getParameter("cargo");
        int salario = Integer.parseInt(request.getParameter("salario")); //Interface

	String nome = request.getParameter("nome");
	String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String datanasc = request.getParameter("datanasc");
	String email = request.getParameter("email");
	String celular = request.getParameter("celular");
        
        String cep  = request.getParameter("cep");
        String rua = request.getParameter("rua");
        String numero = request.getParameter("numero");
        String bairro = request.getParameter("bairro");
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("estado");
        
        Pessoa pessoa = new Pessoa(nome,cpf, email,celular);
        Endereco endereco = new Endereco(cep, rua, numero, bairro, cidade, estado);
        Funcionario funcionario = new Funcionario(dataAdmissao, cargo, salario, nome,cpf, email,celular, cep, rua, numero, bairro, cidade, estado);
	
	
        DAOPessoa.salvarPessoa(pessoa);
        DAOEndereco.inserirEndereco(endereco);
	DAOFuncionario.inserirFuncionario(funcionario);
	
	response.sendRedirect("listar-funcionario.jsp");
	
%>

<h2><%=nome%></h2>

</body>
</html>