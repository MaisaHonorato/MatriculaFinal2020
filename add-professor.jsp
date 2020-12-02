<%@page import="controle.DAOProfessor"%>
<%@page import="modelo.Professor"%>
<%@page import="controle.DAODisciplina "%>
<%@page import="modelo.Disciplina"%>
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
	String formacao = request.getParameter("formacao");
        
        int id= Integer.parseInt( request.getParameter("iddisciplina") );
        Disciplina disciplina = DAODisciplina.localizarDisciplinasId( id );
        
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
	
        Professor professor = new Professor(formacao, disciplina, nome, cpf, email, celular,cep, rua, numero, bairro, cidade, estado );
        
	DAOProfessor.inserirProfessor(professor);
	
	response.sendRedirect("listar-professor.jsp");
	
%>

<h2><%=disciplina%></h2>

</body>
</html>