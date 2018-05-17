<%-- 
    Document   : account summary
    Created on : 26 Jun, 2017, 9:04:25 PM
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
        <form action="action of account summary.jsp" method="post">
        <table>
            <tr>
                <td>site rent</td><td><input type="text" name="rent" value="" /></td>
            </tr>
            <tr>
                <td>staff salary</td><td><input type="text" name="staff salary" value="" /></td>
            </tr>
            <tr>
                <td>fee collected from participants</td><td><input type="text" name="fee from participants" value="" /></td>
            </tr>
            <tr>
                <td>sponsors money</td><td><input type="text" name="sponsors money" value="" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit" /></td>
            </tr>
        </table>
    </form>
    </body>
</html>
