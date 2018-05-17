<%-- 
    Document   : entry of staff details
    Created on : 24 Jun, 2017, 2:28:56 PM
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
        <table>
            <tr>
                <td>name of employee</td><td><input type="text" name="name" value="" /></td>
            </tr>
            <tr>
                <td>booth they are alloted</td><td><input type="text" name="booth number" value="" /></td>
            </tr>
            <tr>
                <td>date of working</td><td><input type="text" name="date of working" value="" /></td>
            </tr>
            <tr><td><input type="submit" value="Submit" /></td></tr>
        </table>
    </body>
</html>
