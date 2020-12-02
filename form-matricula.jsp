<%@page import="modelo.Perfil"%>
<%@page import="java.util.Date"%>
<%@page import="modelo.Matricula"%>
<%@page import="controle.DAOMatricula"%>
<%@page import="modelo.Turma"%>
<%@page import="modelo.Turno"%>
<%@page import="controle.DAOTurma"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Serie"%>
<%@page import="controle.DAOSerie"%>
<%@page import="controle.DAOAluno"%>
<%@page import="modelo.Aluno"%>
<%@page import="controle.DAOEndereco"%>
<%@page import="modelo.Endereco"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


    <a href="logout.jsp"> Sair </a> 
  <%
	Perfil perfil = (Perfil) session.getAttribute("logado");
	if(perfil.getNivel().equals("Secretaria")){

        //ABRIR A TELA PARA SECRETARIA 
        }else{
        response.sendRedirect("login.jsp");// BLOQUEADO! 
        }
		
    %>
  <span> Olá <%=perfil.getUsuario().getPessoa().getNome()%> </span>
<%
    
    //1. Coletar (?id=5)
    int aluno = Integer.parseInt(request.getParameter("id"));

    //2. Localizar
    Aluno alunoBD = new DAOAluno().localizarAlunosId(aluno);

    if (alunoBD != null) {
%>	

<form action="add-aluno.jsp" method="get">
    
    
    
    <label for="Nome">Nome:</label>
    <input type="text" name="nome" placeholder="Nome Completo"<%=alunoBD.getNome()%>"/> <br/>
    
    <label for="RG">RG:</label>
    <input type="number" name="rg" placeholder="RG"<%=alunoBD.getRg()%>"/> <br/>
    
    <label for="DataNasc">Data de nascimento:</label> 
    <input type="date" name="data" placeholder="Data de nascimento"<%=alunoBD.getDatanasc()%>"/> <br/>
    
    <label for="CPF">CPF:</label>
    <input type="number" name="cpf" placeholder="CPF"<%=alunoBD.getCpf()%>"/> <br/>
    
    <label for="Email">E-mail:</label> 
    <input type="email" name="email" placeholder="E-mail"<%=alunoBD.getEmail()%>"/> <br/>
    
    <label for="Celular">Celular:</label> 
    <input type="text" name="celular" placeholder="Celular"<%=alunoBD.getCelular()%>"/> <br/>
    
    <label for="Cep">CEP:</label> 
    <input type="text" name="cep" placeholder="CEP"<%=alunoBD.getEnd().getCep()%>"/> <br/>
    
    <label for="Rua">Rua:</label>
    <input type="text" name="rua" placeholder="Rua, Avenida"<%=alunoBD.getEnd().getRua()%>"/> <br/>
    
    <label for="Numero">Numero:</label> 
    <input type="text" name="numero" placeholder="Número"<%=alunoBD.getEnd().getNumero()%>"/> <br/>
    
    <label for="Cidade">Cidade:</label>
    <input type="text" name="cidade" placeholder="Cidade"<%=alunoBD.getEnd().getCidade()%>"/> <br/>
     <%}%>
        
    <label for="Datamat">Data da Matrícula:</label>
    <input type="text" name="datamat" placeholder="Data da Matrícula"<%=Date%>"/> <br/>     //DATA ATUALIZADA
     
    <label for="Série">Série:</label>
            <%
                DAOSerie dao = new DAOSerie();
                List<Serie> series = dao.listarSeries();
                    for (Serie s : series) {%>
    <input type="text"  name="serie"  placeholder="Série"<%=s.getNome()%>"/>
        
        <%}%>
    <label for="Turma">Turma:</label>
            <%
                DAOTurma daot = new DAOTurma();
                List<Turma> turmas = daot.listarTurmas();
                  for (Turma t : turmas) {%>
    <input type="text" name="turma" placeholder="Turma"<%=t.getNome()%>">
    
    <label for="Sala">Sala:</label>
    <input type="number"  name="sala" placeholder="Sala"<%=t.getSala()%>">
            
    <label for="Turno">Turno:</label>
    <input type="text"  name="turno"  placeholder="Turno"<%=t.getTurno()%>">
        <%}%>
    Ativo: 
        Sim <input type="radio" name="ativo"  <%if (alunoBD.isAtivo()) {
                        out.print("checked");%>>
        Não <input type="radio" name="ativo" <%if (!alunoBD.isAtivo())
                        out.print("checked");%>></br>
        
    <input type="submit" value="Enviar (input)">
</form>

        <a href="form-matricula.jsp"> Fazer Matrícula. </a>
        <a href="form-aluno.jsp"> Adicionar Aluno. </a>
