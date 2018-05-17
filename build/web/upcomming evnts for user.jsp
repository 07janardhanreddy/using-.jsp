<%-- 
    Document   : upcomming evnts for user
    Created on : 26 Jun, 2017, 9:20:21 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="connect.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="action upcomming.jsp" method="post">
        <table>
            <tr>
                <td>place of expo</td><td><select name="place of expo">
                        <option>Hyderabad</option>
                        <option>Bangalore</option>
                        <option>Delhi</option>
                        <option>Chennai</option>
                        <option>Mumbai</option>
                    </select></td>
            </tr>
                       
                        <tr>
                <td><input type="submit" value="Submit" /></td>
            </tr>
        </table>
            </form>
    </body>
</html>