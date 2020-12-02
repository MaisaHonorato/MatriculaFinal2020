<%@page import="controle.DAODisciplina"%>
<%@page import="modelo.Disciplina"%>
<%@page import="controle.DAOSerie"%>
<%@page import="modelo.Serie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Série</title>
    </head>
    <body>
  <h3>Adicionar Série</h3>
<hr />
       <form action="add-serie.jsp" method="get">
           
    <label for="Nome">Nome:</label>
    <input type="text" name="nome"/> <br/>
    
    <label for="Anoletivo">Ano Letivo:</label>
    <input type="text" name="anoletivo"/> <br/>
    
    <label for="Quantdeaulabimestral">Quantidade de Aula Por Bimestre:</label>
    <input type="text" name="quantdeaulabimestral"/> <br/>
    
    <label for="Quantdeaulanual">Quantidade de Aula por Ano:</label>
    <input type="text" name="quantdeaulanual"/> <br/>
    
    <label for="Ementa">Ementa:</label>
    <input type="text" name="ementa"/> <br/>
    
    <label for="Serie">Série:</label>
    <select name="matricula>
	<%for( Serie s : DAOSerie.listarSeries() ){%>
	<option value="<%=s.getId()%>"> <%=s.getNome()%> <%=s.getAno()%></option><%}%>
    </select> <br/>
     
    <input type="submit" value="Enviar (input)">
</form>
<a href="form-disciplina.jsp"> Adicionar Disciplina. </a>
    </body>
</html>