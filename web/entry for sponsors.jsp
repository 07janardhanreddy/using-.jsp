<%-- 
    Document   : entry for sponsors
    Created on : 24 Jun, 2017, 2:25:37 PM
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
        <form action="action fo sponsors details.jsp" method="post">
        <table>
            <tr>
                <td>name of sponsor</td><td><input type="text" name="sponsor name" value="" /></td>
            </tr>
            <tr>
                <td>company name</td><td><input type="text" name="company name" value="" /></td>
            </tr>
            <tr>
                <td>mobile number</td><td><input type="text" name="mobile number" value="" /></td>
            </tr>
            <tr>
                <td>date of sponsoring</td><td><input type="text" name="date of sponsoring" value="" /></td>
            </tr>
            <tr>
                <td>amount of sponsoring</td><td><input type="text" name="amount" value="" /></td>
            </tr>
            <tr><td><input type="submit" value="Submit" /></td></tr>
        </table>
            </form>
    </body>
</html>
