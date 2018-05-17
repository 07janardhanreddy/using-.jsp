<%-- 
    Document   : action of slot details
    Created on : 26 Jun, 2017, 7:19:59 PM
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
        String placeofexpo=request.getParameter("place of expo");
         String boothremaining=request.getParameter("booth remaining");
            String lastdate=request.getParameter("last date of submission");
           String startdate=request.getParameter("start date of event");   
        PreparedStatement ps=con.prepareStatement("insert into ENTRY_OF_SLOT values(?,?,?,?)");
       ps.setString(1,placeofexpo);
        ps.setString(2,boothremaining);
         ps.setString(3,lastdate);
          ps.setString(4,startdate);
              
       int k=ps.executeUpdate();
        if(k!=0)
        {
            out.println("inserted succesfully");
          
        }
        %>
    </body>
</html>
