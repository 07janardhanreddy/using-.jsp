<%-- 
    Document   : entry of slot
    Created on : 26 Jun, 2017, 7:12:53 PM
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
        <form action="action of slot details.jsp" method="post">
        <table>
            <tr>
                <td>place of expo</td><td><select name="place of expo">
                        <option>Hyderabad</option>
                        <option>Bangalore</option>
                        <option>Delhi</option>
                        <option>Mumbai</option>
                        <option>Chennai</option>
                    </select></td>
            </tr>
            <tr>
                <td>number of booths </td><td><input type="text" name="booth remaining" value="" /></td>
            </tr>
            <tr>
                <td>last date of submission</td><td><input type="text" name="last date of submission" value="" /></td>
            </tr>
            <tr>
                <td>start date of event</td><td><input type="text" name="start date of event" value="" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit" /></td>
            </tr>
        </table>
            </form>
    </body>
</html>
