<%-- 
    Document   : view sponsor details
    Created on : 24 Jun, 2017, 2:53:04 PM
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
                <th>mobile number</th>
                <th>date of sponsoring</th>
                <th>amount of sponsoring</th>
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from SPONSORS_LOBY" ); 
            while(rs.next())
            {
            %>
            
            
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
             <td><a href="delete action for sponsor.jsp?id=<%=rs.getString(4)%>">delete</a></td>
            </tr>
           
            <%
            }
            %>
    </body>
</html>
