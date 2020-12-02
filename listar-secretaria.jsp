<%-- 
    Document   : view-aluno
    Created on : 02/12/2019, 11:40:09
    Author     : Maisa Honorato
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="controle.DAOAluno"%>
<%@page import="modelo.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Visualizar Aluno</title>

        <meta charset="utf-8">
        <title>Escola Criança Feliz</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicons -->
        <link href="" rel="icon">
        <link href="" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

        <!-- Bootstrap CSS File -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Libraries CSS Files -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/ionicons.min.css" rel="stylesheet">
        <link href="css/owl.carousel.min.css" rel="stylesheet">
        <script src="js/ionicons.js"></script>
        <link href="css/ionicons.css" rel="stylesheet">

        <!-- Main Stylesheet File -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="_topoSair.jsp"></jsp:include>
        
        <!--/ Intro Single star /-->
        <section class="intro-single">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-8">
                        <div class="title-single-box">
                            <h1 class="title-single">Visualizar Aluno</h1>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Matrícula
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!--/ Intro Single End /-->


        <hr />
        <div id="list" class="row">

            <div class="table-responsive col-md-12">

                <form action="actionAluno.jsp" method="GET">
                    <div class="row">
                        <div class="form-group col-md-4 text-success">
                            <%  
                                 DAOAluno dao = new DAOAluno();
                                 List<Aluno> alunos = dao.listarAlunos();
                            for(Aluno a : alunos){ %>
                            <label for="InputMatricula">Matrícula</label>
                            <a><%=a.getId()%></a>
                        </div>
                        <div class="form-group col-md-4 text-success">
                            <label for="InputNome">Nome</label>
                            <a><%=a.getNome()%></a>
                        </div>
                        <div class="form-group col-md-4 text-success">
                            <label for="InputDatanasc">Data de Nascimento</label>
                            <a><%=a.getNome()%></a>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-2 text-success">
                            
                            <label for="InputCep">CEP</label>
                            

                        </div>

                        <div class="form-group col-md-2 text-success">
                            <label for="InputLogradouro">Logradouro</label>
                            
                        </div>

                        <div class="form-group col-md-2 text-success">
                            <label for="InputBairro">Bairro</label>
                            <input type="bairro" class="form-control" id="bairro" name="bairro" placeholder="Bairro">
                        </div>

                        <div class="form-group col-md-2 text-success">
                            <label for="InputCidade">Cidade</label>
                            <input type="cidade" class="form-control" id="cidade" name="cidade" placeholder="Cidade">
                        </div>
                        <div class="form-group col-md-2 text-success">
                            <label for="InputEstado">Estado</label>
                            <input type="estado" class="form-control" id="uf" name="uf" placeholder="Estado">
                        </div>

                    </div>
                    <!--</form>-->
                    <div class="row">
                        <div class="form-group col-md-3 text-success">
                            <label for="turma">Turma</label>
                            <output >

                            </output>
                        </div>
                        <div class="form-group col-md-3 text-success">
                            <label for="serie">Série</label>
                            <output >

                            </output>
                        </div>
                        <div class="form-group col-md-3 text-success ">
                            <label for="turno">Turno</label>
                            <output >

                            </output>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col text-center">
                            <button type="submit" class="btn btn-warning" href="edit-aluno.jsp" id="editar">Editar</button>
                            <button type="submit" class="btn btn-default" href="view-aluno.jsp">Cancelar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
        <script>
            $(".editar").click(function(){
        var nome = $(this).data('nome');
        var serie = $(this).data('serie');
        var turno = $(this).data('turno');
            });
            
        </script>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
