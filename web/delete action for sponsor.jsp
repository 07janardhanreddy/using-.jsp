<%-- 
    Document   : delete action for sponsor
    Created on : 29 Jun, 2017, 1:47:34 PM
    Author     : hp
--%>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <%
String username=request.getParameter("id");
Statement st=con.createStatement();
int k=st.executeUpdate("delete from GAME_INFORMATION where GAME_NAME='"+username+"'");
if(k!=0)
{
    response.sendRedirect("view_of_game_information.jsp");
}
%> 
    </body>
</html>
