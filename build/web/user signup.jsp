<%-- 
    Document   : user signup
    Created on : 24 Jun, 2017, 2:22:41 PM
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
        <form action="reg action for user.jsp" method="post">
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
                <td>create password</td><td><input type="text" name="create password" value="" /></td>
            </tr>
            <tr>
                <td>
                    confirm password
                </td><td><input type="text" name="confirm password" value="" /></td>
            </tr>
            <tr><td><input type="submit" value="Submit" /></td></tr>
        </table>  
            </form>
    </body>
</html>
