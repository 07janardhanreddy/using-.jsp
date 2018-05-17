<%-- 
    Document   : sponsor detail for user
    Created on : 24 Jun, 2017, 2:59:39 PM
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
               
                <th>name of sponsor</th>
                <th>name of company</th>
               
                <th>date of sponsoring</th>
               
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from SPONSORS_LOBY" ); 
            while(rs.next())
            {
            %>
            
            
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            
            <td><%=rs.getString(4)%></td>
            
            </tr>
           
            <%
            }
            %>
    </body>
</html>
