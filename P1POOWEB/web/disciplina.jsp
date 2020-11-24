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
        <%@include file="WEB-INF/jspf/css.jspf" %>
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
            
        </form>
                <%@include file="WEB-INF/jspf/script.jspf" %>
        </body>
</html>
