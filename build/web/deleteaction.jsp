<%-- 
    Document   : deleteaction
    Created on : 31 Jan, 2015, 10:08:46 AM
    Author     : kaushik123
--%>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
int k=st.executeUpdate("delete from ENTRY_OF_SLOT where START_DATE_OF_EVENT='"+username+"'");
if(k!=0)
{
    response.sendRedirect("view of upcoming events.jsp");
}
%>      
    </body>
</html>
