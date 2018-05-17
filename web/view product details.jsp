<%-- 
    Document   : view product details
    Created on : 26 Jun, 2017, 7:50:44 PM
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
               
                <th>product name</th>
                <th>product id</th>
                <th>model name</th>
                <th>model number</th>
                <th>product guide</th>
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from SLOT_BOOKING" ); 
            while(rs.next())
            {
            %>
            
            
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            </tr>
           
            <%
            }
            %>
    </body>
</html>
