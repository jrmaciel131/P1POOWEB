<%-- 
    Document   : listaDeDisciplina
    Created on : 04/10/2020, 06:40:07
    Author     : jrmac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.Disciplina" %>
<%@page import="java.util.Set" %>
<%@page import="java.util.ArrayList" %>
<%
    Disciplina disciplina = null;
    try {
        disciplina = (Disciplina) application.getAttribute("disciplina");
    } catch (Exception e) {
        out.print(e);
    }

    if (disciplina != null) {
%>
<!DOCTYPE html>
<html>
<%
    for(int i = 0; i < disciplina.getList().size();i++){
        try {
                Float nota = Float.parseFloat(request.getParameter("name"+i));
                if(nota >= 0 && nota <= 10){
                    Disciplina notadisciplina = disciplina.getList().get(i);
                    notadisciplina.setNota(nota);
                    disciplina.getList().get(i).setNota(nota);
                    application.setAttribute("disciplina", disciplina);
                }else{
%><script>alert("Disciplina de id: <%=i%> possui um Parametro invalido. (Apenas valores de 0 a 10 são permitidos !!!!")</script><%
                }
            } catch (Exception e) {
                continue;
            }
            }
    }
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTA DE DISCIPLINAS</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <form>
            <table class="table table-bordered table-dark">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Disciplina</th>
                        <th>Ementa</th>
                        <th>Ciclo</th>
                        <th>Nota</th>
                    </tr>
                </thead>
                <tbody>
                    <%for (int i = 0; i < disciplina.getList().size(); i++) {%>
                    <tr>
                        <td><%=i + 1%></td>
                        <td><%=disciplina.getList().get(i).getName()%></td>
                        <td><%=disciplina.getList().get(i).getEmenta()%></td>
                        <td><%=disciplina.getList().get(i).getCiclo()%></td>
                        <td><input type="text" name="name<%=i%>" value="<%=disciplina.getList().get(i).getNota()%>"></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <input type="submit" name="" value="Atualizar Dados"> 
        </form>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>        
    </body>
</html>
