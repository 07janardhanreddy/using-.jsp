<%--
    Document   : admin signin
    Created on : 24 Jun, 2017, 2:31:24 PM
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
        <form action="login action for admin.jsp" method="post">
        <table>
            <tr>
                <td>email id</td><td><input type="text" name="email id" value="" /></td>
            </tr>
            <tr>
                <td>password</td><td><input type="password" name="password" value="" /></td>
            </tr>
            <tr><td><input type="submit" value="Submit" /></td></tr>
            <tr><td><a href="admin signup.jsp">Signup</a></td></tr>
        </table>
            </form>
    </body>
</html>
