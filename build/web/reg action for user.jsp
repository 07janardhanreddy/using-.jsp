<%-- 
    Document   : reg action for user
    Created on : 24 Jun, 2017, 3:13:09 PM
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
        String firstname=request.getParameter("first name");
         String lastname=request.getParameter("last name");
         String companyname=request.getParameter("company name");
         String country=request.getParameter("country");
         String state=request.getParameter("state");
          String mobilenumber=request.getParameter("mobile number");
           String emailid=request.getParameter("email id");
            String createpassword=request.getParameter("create password");
            String confirmpassword=request.getParameter("confirm password");
        PreparedStatement ps=con.prepareStatement("insert into USERSIGNUP values(?,?,?,?,?,?,?,?,?)");
       ps.setString(1,firstname);
        ps.setString(2,lastname);
        ps.setString(3,companyname);
        ps.setString(4,country);
        ps.setString(5,state);
         ps.setString(6,mobilenumber);
          ps.setString(7,emailid);
           ps.setString(8,createpassword);
           ps.setString(9,confirmpassword);       
       int k=ps.executeUpdate();
        if(k!=0)
        {
            out.println("inserted succesfully");
        }
        %>
        
    </body>
</html>

