<%-- 
    Document   : action of account summary
    Created on : 29 Jun, 2017, 2:41:10 PM
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
        String rent=request.getParameter("rent");
         String staffsalary=request.getParameter("staff salary");
            String participantsfee=request.getParameter("fee from participants");
           String sponsorsmoney=request.getParameter("sponsors money");
           
        PreparedStatement ps=con.prepareStatement("insert into ACCOUNT_SUMMARY values(?,?,?,?)");
          ps.setString(1,rent);
         ps.setString(2,staffsalary);
          ps.setString(3,participantsfee);
          ps.setString(4,sponsorsmoney);
              
       int k=ps.executeUpdate();
        if(k!=0)
        {
            out.println("inserted succesfully");
          
        }
        %>
    </body>
</html>
