<%-- 
    Document   : view completed event
    Created on : 26 Jun, 2017, 7:46:41 PM
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
               
                <th>year of expo</th>
                <th>month of expo</th>
                <th>place of expo</th>
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from COMPLETED_EVENTS" ); 
            while(rs.next())
            {
            %>
            
            
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
                     </tr>
           
            <%
            }
            %>
             </table>
            
                <a href="view product details.jsp">product details</a>
  
 
        </body>
</html>
