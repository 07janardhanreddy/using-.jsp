<%-- 
    Document   : fee payment
    Created on : 29 Jun, 2017, 1:53:22 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="action of fee details.jsp" method="post">
        <table>
            <tr>
                <td>credit card<input type="radio" name="card type" value="credit card" />debit card<input type="radio" name="card type" value="debit card" /></td>
            </tr>
            <tr>
                <td>card number</td><td><input type="text" name="card number" value="" /></td>
            </tr>
            <tr>
                <td>expiry date</td><td><input type="text" name="expiry date" value="" /></td><td>cvv</td><td><input type="text" name="cvv number" value="" /></td>
            </tr>
            <tr>
                <td>card holder number</td><td><input type="text" name="card name" value="" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit" /></td>
            </tr>
        </table>
            </form>
    </body>
</html>