<%-- 
    Document   : view of upcoming events
    Created on : 29 Jun, 2017, 11:27:12 AM
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
               
                <th>place of expo</th>
                <th>number of booths</th>
                <th>last date of event</th>
                <th>start date of event</th>
              
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from ENTRY_OF_SLOT" ); 
            while(rs.next())
            {
                
            %>
            
            
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><a href="deleteaction.jsp?id=<%=rs.getString(4)%>">delete</a></td>
            </tr>
           
            <%
            }
            %>
    </body>
</html>
