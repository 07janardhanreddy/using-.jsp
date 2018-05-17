<%-- 
    Document   : slot booking
    Created on : 26 Jun, 2017, 7:31:27 PM
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
        <form action="action of product details.jsp" method="post">
        <table>
            <tr>
                <td>
                    place of expo
                </td><td>
                    <input type="text" name="place of expo" value=" <%String sid=(String)session.getAttribute("place of expo");
                out.println(sid);%>"/></td>
            </tr>
            <tr>
                <td>product name</td><td><input type="text" name="product name" value="" /></td>
            </tr>
            <tr>
                <td>product id</td><td><input type="text" name="product id" value="" /></td>
            </tr>
            <tr>
                <td>model name</td><td><input type="text" name="model name" value="" /></td>
            </tr>
            <tr>
                <td>model number</td><td><input type="text" name="model number" value="" /></td>
            </tr>
            <tr>
                <td>upload product guide</td><td><input type="text" name="product guide" value="" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit" /></td>
            </tr>
        </table>
            </form>
    </body>
</html>
