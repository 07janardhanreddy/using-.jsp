<%-- 
    Document   : upaction
    Created on : Aug 3, 2015, 10:11:15 PM
    Author     : CSE
--%>
<%@page import="java.sql.PreparedStatement"%>
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
         
        PreparedStatement ps=con.prepareStatement("update ENTRY_OF_SLOT set PLACE_OF_EXPO=?,NUMBER_OF_BOOTHS=?,LAST_DATE_OF_SUBMISSION=?,START_DATE_OF_EVENT=? where PLACE_OF_EXPO='"+placeofexpo+"'");
       
                ps.setString(1,placeofexpo);      
                ps.setString(2,boothremaining);
                ps.setString(3,lastdate);
                ps.setString(4,startdate);
            
       int k=ps.executeUpdate();
       
        if(k!=0)
        {
            out.println("updated successfully");
            response.sendRedirect("action of product details.jsp");
        }
      
        %>
        
        
        
        
        
    </body>
</html>
