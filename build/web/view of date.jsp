<%-- 
    Document   : view of date
    Created on : 27 Jun, 2017, 10:41:28 AM
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
        String id1=request.getParameter("USER_ID");
        
        %>
        <center>
        <table border="1">
            <tr>
               
                <th>last date of booking</th>
                <th>start date of event</th>
      <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select LAST_DATE_OF_SUBMISSION,START_DATE_OF_EVENT  from ENTRY_OF_SLOT" ); 
            
            while(rs.next())
            {
            %>           
                
                
            </tr>
           
            
            
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
           
                     </tr>
           
            <%
            }
            %>
        </table>
    </center>
    </body>
</html>
