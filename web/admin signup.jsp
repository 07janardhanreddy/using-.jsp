<%-- 
    Document   : admin signup
    Created on : 24 Jun, 2017, 2:18:29 PM
    Author     : hp
--%>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>ADMINISTRATOR REGISTRATION</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="regaction.jsp" method="post">
            <ceter>
        <table>
            <tr>
                <td>First name</td><td><input type="text" name="first name" value="" /></td>
            </tr>
            <tr><td>Last Name</td><td><input type="text" name="last name" value="" /></td></tr>
            <tr>
                <td>Mobile number</td><td><input type="text" name="mobile number" value="" /></td>
            </tr>        
            <tr>
                <td>Email id</td><td><input type="text" name="email id" value="" /></td>
            </tr>
            <tr>
                <td>create password</td><td><input type="password" name="create password" value="" /></td>
            </tr>
            <tr>
                <td>
                    confirm password
                </td><td><input type="password" name="confirm password" value="" /></td>
            </tr>
            <tr><td><input type="submit" value="Submit" /></td></tr>
        </table>
            </form>
    </body>
</html>
