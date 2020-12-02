<%@page import="controle.DAOAvaliacao"%>
<%@page import="modelo.Avaliacao"%>
<%@page import="controle.DAOMatricula"%>
<%@page import="modelo.Matricula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliacao</title>
    </head>
    <body>
  <h3>Adicionar Avaliação</h3>
<hr />
       <form action="add-avaliacao.jsp" method="get">
           
    <label for="Descricao">Descrição:</label>
    <input type="text" name="descricao"/> <br/>
    
    <label for="Disciplina">Disciplina:</label>
    <input type="text" name="disciplina"/> <br/>
    
    <label for="Matricula">Matricula:</label>
    <select name="matricula>
	<%for( Matricula m : DAOMatricula.listarMatriculas() ){%>
	<option value="<%=m.getId()%>"> <%=m.getAluno().getNome()%> </option><%}%>
    </select> <br/>
    
    <label for="Nota">Nota:</label>
    <input type="number" name="nota"/> <br/>
    
    <input type="submit" value="Enviar (input)">
</form>
<a href="form-avaliacao.jsp"> Adicionar Avaliacao. </a>
    </body>
</html>
