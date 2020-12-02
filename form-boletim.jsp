<%@page import="controle.DAOMatricula"%>
<%@page import="modelo.Matricula"%>
<%@page import="controle.DAODiario"%>
<%@page import="modelo.Diario"%>
<%@page import="controle.DAOSerie"%>
<%@page import="modelo.Serie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Boletim</title>
    </head>
    <body>
       <form action="add-boletim.jsp" method="get">
	
	<label for="Matricula">Matrícula:</label>
	<select name="matricula">
		<%for( Matricula m : DAOMatricula.listarMatriculas() ){%>
			<option value="<%=m.getId()%>"> <%=m.getAluno()%> <%=m.getSerie()%> <%=m.getTurma()%>
                            <%=m.getTurno()%> </option>
		<%}%>
	</select> <br/>
        
        <label for="Disciplina">Disciplina:</label>
	<select name="disciplina">
            <%for( Diario d : DAODiario.listarDiarios() ){%>
			<option value="<%=d.getId()%>"> <%=d.getDisciplina()%>
                             </option>
		<%}%>
	</select> <br/>
        
        <label for="Avaliacao">Avaliação:</label>
	<select name="avaliacao">
            <%for( Diario d : DAODiario.listarDiarios() ){%>
			<option value="<%=d.getId()%>"> <%=d.getAvaliacoes()%>
                             </option>
		<%}%>
	</select> <br/>
        
        <label for="Frequencia">Faltas:</label>
	<select name="frequencia">
            <%for( Diario d : DAODiario.listarDiarios() ){%>
			<option value="<%=d.getId()%>"> <%=d.getFrequencias()%>
                             </option>
		<%}%>
	</select> <br/>

	<input type="submit" value="Enviar (input)">
</form>
        </body>
        <a href="form-boletim.jsp"> Adicionar Boletim. </a>
        </html>