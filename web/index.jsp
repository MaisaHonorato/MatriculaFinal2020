<%@page import="java.util.List"%>
<%@page import="controle.DAOPerfil"%>
<%@page import="modelo.Perfil"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
< html  lang = " en " >
< head >
    < meta  charset = " UTF-8 " >
    < meta  name = " viewport "  content = " width = device-width, initial-scale = 1.0 " >
        
    <title>Home</title>

        <!-- Bootstrap CSS File -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Libraries CSS Files -->
        <link href="extras/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/ionicons.min.css" rel="stylesheet">
        <link href="css/owl.carousel.min.css" rel="stylesheet">
        <script src="extras/ionicons.js"></script>
        <link href="css/ionicons.min.css" rel="stylesheet">

        <!-- Main Stylesheet File -->
        <link href="css/style.css" rel="stylesheet">

        <!-- JavaScript Libraries -->
        <script src="js/jquery.min.js"></script>
</head>
  <body>
    <%
                DAOPerfil dao = new DAOPerfil();
                        List<Perfil> perfis = dao.listarPerfis();
                        for (Perfil p : perfis) {
                            p.setNivel();
		int nivel = request.getAttribute(nivel, "");
		if(p.setNivel()==1)
                    pageName="_formPerfil.jsp";
                
                        }
	%>

    <header>
        <!-- Top -->
        <jsp:include page="<%=pageName%>"></jsp:include>
    </header>

    <section class="container">
        <jsp:include page="<%=pageName%>"></jsp:include>
    </section>

    <footer>
        <!-- Rodapé -->
       <jsp:include page="<%=pageName%>"></jsp:include>
    </footer>
        
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        <div id="preloader"></div>

        <script src="js/owl.carousel.min.js"></script>
        <script src="js/scrollreveal.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
