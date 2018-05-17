<%-- 
    Document   : action upcomming
    Created on : 27 Jun, 2017, 12:03:44 PM
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
         <%
                String place=request.getParameter("place of expo");    
            session.setAttribute("place of expo", place);
                Statement st=con.createStatement();
                 ResultSet rs=st.executeQuery("select PLACE_OF_EXPO  from ENTRY_OF_SLOT where PLACE_OF_EXPO='"+place+"'" ); 
                 rs.next();
                 String p=rs.getString(1);
              if(place.equals(p))
            {
             
            %>   
            <table border="1">
              <tr>
               
                <th>last date of booking</th>
                <th>start date of event</th>
                <th>number of booths remaining</th>
                <%rs=st.executeQuery("select LAST_DATE_OF_SUBMISSION,START_DATE_OF_EVENT,NUMBER_OF_BOOTHS  from ENTRY_OF_SLOT where PLACE_OF_EXPO='"+place+"'" );
                 rs.next();
                %>
           
              </tr>
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
           
                     </tr>
                     <%
            } 
            
              else{
                  out.println("wrong entry");
              }
                                      %>
                                      
</table>
                   <tr>
                   <td><a href="slot booking.jsp">book a slot</a></td>
                   </tr>
    </body>
</html>
