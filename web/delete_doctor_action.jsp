<%-- 
    Document   : delete_doctor
    Created on : 28 Mar, 2015, 1:51:37 AM
    Author     : manogna
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
String username=request.getParameter("username");
Statement st=con.createStatement();
int k=st.executeUpdate("delete from ADMIN_SIGNUP where EMAIL_ID='"+username+"'");
if(k!=0)
{
    response.sendRedirect("doctor_view.jsp");
}
%>
    </body>
</html>
