<%@page import="controle.DAOUsuario"%>
<%@page import="modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div id="topo">
    <!--/ Nav Star /-->
 <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      
      <a class="navbar-brand text-brand" href="index.html">Escola<span class="color-b"> Criança Feliz</span></a>
      <button type="button" class="btn btn-link  navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
       
      </button>
      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link " href="index.jsp">Home</a>
          </li>
           
          <select name="id">
		<%for(Usuario d : DAOUsuario.listarUsuarios() ){
                    if(Usuario.)
                %>
			<option value="<%=d.getId()%>">  </option>
		<%}%>
	</select>
        
          <li class="nav-item">
            <a class="nav-link active" href="listar-matricula.jsp">Matrícula</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="listar-diario.html">Boletim</a>
          </li>
           
         
  
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                Secretaria
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="form-disciplina.html">Disciplina</a>
                <a class="dropdown-item" href="form-avaliacao.html">Avaliação</a>
                <a class="dropdown-item" href="form-boletim.html">Boletim</a>
                
              </div>
            </li>
         
            <li class="nav-item">
                <a class="nav-link" href="contato.html">Contato</a>
              </li>
              <li class="nav-item">
                <button type="button" class="btn btn-b-n   " >
                  <a class="nav-link" href="logout.jsp">Sair</a>
                </button>
              </li>
          
         
        </ul>
      </div>
      
    </div>
  </nav>
  <!--/ Nav End /-->
</div>