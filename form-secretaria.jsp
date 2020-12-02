<%@page import="controle.DAOFuncionario"%>
<%@page import="modelo.Funcionario"%>
<%@page import="controle.DAOSecretaria"%>
<%@page import="modelo.Secretaria"%>
<%@page import="controle.DAODisciplina"%>
<%@page import="modelo.Disciplina"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="add-secretaria.jsp" method="get">
	<label for="Nome">Nome:</label> <input type="text" name="nome"/> <br/>
    <label for="CPF">CPF:</label> <input type="number" name="cpf"/> <br/>
    <label for="Email">E-mail:</label> <input type="email" name="email"/> <br/>
    <label for="Celular">Celular:</label> <input type="text" name="celular"/> <br/>
    <label for="Cep">CEP:</label> <input type="text" name="cep" id="cep"/> <br/>
    <label for="Bairro">Bairro:</label> <input type="text" name="cep" id="cep"/> <br/>
    <label for="Rua">Rua:</label> <input type="text" name="rua" id="rua"/> <br/>
    <label for="Numero">Numero:</label> <input type="text" name="numero" id="numero"/> <br/>
    <label for="Cidade">Cidade:</label> <input type="text" name="cidade" id="cidade"/> <br/>
    <label for="Formacao">Formação:</label> <input type="text" name="formacao"/> <br/>
    <label for="Dataadmissao">Data de Admissão:</label> <input type="text" name="dataAdmissao"/> <br/>
    
    <label for="Cargo">Cargo:</label> 
    <select name="disciplina">
		<%for(Funcionario f : DAOFuncionario.listarFuncionario() ){%>
			<option value="<%=f.getCodigo()%>"> <%=f.getCargo()%> </option>
		<%}%>
    
    <label for="Disciplina">Disciplina:</label>
	<select name="disciplina">
		<%for(Disciplina d : DAODisciplina.listarDisciplina() ){%>
			<option value="<%=d.getCodigo()%>"> <%=d.getNome()%> </option>
		<%}%>
	</select> <br/>



	<input type="submit" value="Enviar (input)">
</form>
<script type="text/javascript" >

$(document).ready(function() {

    function limpa_formulário_cep() {
        // Limpa valores do formulário de cep.
        $("#rua").val("");
        $("#bairro").val("");
        $("#cidade").val("");
        $("#uf").val("");
        
    }
    
    //Quando o campo cep perde o foco.
    $("#cep").blur(function() { // jQuery

        //Nova variável "cep" somente com dígitos.
        var cep = $(this).val().replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep !== "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if(validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                $("#rua").val("...");
                $("#bairro").val("...");
                $("#cidade").val("...");
                $("#uf").val("...");
                

                //Consulta o webservice viacep.com.br/
                $.getJSON("https://viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

                    if (!("erro" in dados)) {
                        //Atualiza os campos com os valores da consulta.
                        $("#rua").val(dados.logradouro);
                        $("#bairro").val(dados.bairro);
                        $("#cidade").val(dados.localidade);
                        $("#uf").val(dados.uf);
                        
                    } //end if.
                    else {
                        //CEP pesquisado não foi encontrado.
                        limpa_formulário_cep();
                        alert("CEP não encontrado.");
                    }
                });
            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_cep();
        }
    });
});

</script>
<a href="form-secretaria.jsp"> Adicionar Secretária. </a>
