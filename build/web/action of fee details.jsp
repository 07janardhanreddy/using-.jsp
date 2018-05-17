<%-- 
    Document   : action of fee details
    Created on : 29 Jun, 2017, 2:02:12 PM
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
               <%
        String cardtype=request.getParameter("card type");
         String cardnumber=request.getParameter("card number");
            String expirydate=request.getParameter("expiry date");
           String cvv=request.getParameter("cvv number");
           String name=request.getParameter("card name");
        PreparedStatement ps=con.prepareStatement("insert into EXPO_FEE values(?,?,?,?,?)");
       ps.setString(5,cardtype);
        ps.setString(1,cardnumber);
         ps.setString(2,expirydate);
          ps.setString(3,cvv);
          ps.setString(4,name);
              
       int k=ps.executeUpdate();
        if(k!=0)
        {
            out.println("inserted succesfully");
          
        }
        %>
    </body>
</html>
