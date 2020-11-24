<%-- 
    Document   : index
    Created on : 04/10/2020, 06:35:24
    Author     : jrmac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.Disciplina" %>
<%@page import="java.util.Set" %>

<%
    Disciplina disciplina = new Disciplina();

    Disciplina ING = new Disciplina("ingles", "Estudo da lingua inglesa", 4);
    Disciplina POO = new Disciplina("POO", "Programação orientada a objeto", 5);
    Disciplina ENGS3 = new Disciplina("ENG SOFTWARE", "Estudo de engenharia de software", 4);
    Disciplina LP4 = new Disciplina("Linguagem de programação", "Linguagem de programação web PHP", 2);
    Disciplina TG = new Disciplina("Metodologia", "Metodologia da pesquisa cientifica tecnológica", 5);
    Disciplina BD = new Disciplina("Banco de dados", "Teoria de banco de dados", 4);
    Disciplina SO = new Disciplina("Sistemas Operacionais", "Estudo sobre o funcionamento de diferentes sistemas operacionais", 4);
    
    disciplina.setDisciplinas(ING);
    disciplina.setDisciplinas(POO);
    disciplina.setDisciplinas(ENGS3);
    disciplina.setDisciplinas(LP4);
    disciplina.setDisciplinas(TG);
    disciplina.setDisciplinas(BD);
    disciplina.setDisciplinas(SO);
    

    application.setAttribute("disciplina", disciplina);
%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title>P1 POO</title>

        <!-- Bootstrap core CSS -->
        <link href="../../css/editor.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="narrow-jumbotron.css" rel="stylesheet">
        <%@include file="WEB-INF/jspf/css.jspf" %>
    </head>

    <body style="background-color: rgb(250, 250, 250);">

        <%@include file="WEB-INF/jspf/menu.jspf" %>

            <div class="jumbotron">
                <h1 class="display-3">P1 - POO</h1>
                <p class="lead">César Maciel Silva </br> ra: 1290481913054</br>Numero de disciplinas matriculadas: <%=disciplina.getList().size()%> </p>
                <p><a class="btn btn-lg btn-success" href="listaDeDisciplina.jsp" role="button" style="background-color: rgb(0, 123, 255);">Lista de Disciplinas</a></p>
            </div>

            <div class="row marketing">



            </div>

            <footer class="footer">

            </footer>

                <%@include file="WEB-INF/jspf/script.jspf" %>
    </body>
</html>
