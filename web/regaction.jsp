<%-- 
    Document   : regaction
    Created on : Aug 3, 2015, 9:14:33 PM
    Author     : CSE
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
          String mobilenumber=request.getParameter("mobile number");
           String emailid=request.getParameter("email id");
            String createpassword=request.getParameter("create password");
            String confirmpassword=request.getParameter("confirm password");
        PreparedStatement ps=con.prepareStatement("insert into ADMIN_SIGNUP values(?,?,?,?,?,?)");
       ps.setString(1,firstname);
        ps.setString(2,lastname);
         ps.setString(3,mobilenumber);
          ps.setString(4,emailid);
           ps.setString(5,createpassword);
           ps.setString(6,confirmpassword);       
       int k=ps.executeUpdate();
        if(k!=0)
        {
            out.println("inserted succesfully");
        }
        %>
        
    </body>
</html>
