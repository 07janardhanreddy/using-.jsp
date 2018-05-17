<%-- 
    Document   : action fo sponsors details
    Created on : 29 Jun, 2017, 2:48:29 PM
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
         String sponsorname=request.getParameter("sponsor name");
         String companyname=request.getParameter("company name");
          String mobilenumber=request.getParameter("mobile number");
           String dateofsponsoring=request.getParameter("date of sponsoring");
           String amount=request.getParameter("amount");
          
        PreparedStatement ps=con.prepareStatement("insert into SPONSORS_LOBY values(?,?,?,?,?)");
       ps.setString(1,sponsorname);
        ps.setString(2,companyname);
         ps.setString(3,mobilenumber);
          ps.setString(4,dateofsponsoring);
              ps.setString(5,amount);
               int k=ps.executeUpdate();
        if(k!=0)
        {
            out.println("inserted succesfully");
          
        }
        %>
    </body>
</html>
