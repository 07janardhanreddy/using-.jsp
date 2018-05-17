<%-- 
    Document   : view of account details
    Created on : 29 Jun, 2017, 3:00:29 PM
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
               
                <th>site rent</th>
                <th>Staff salary</th>
                <th>fee from participants</th>
                <th>sponsoring money</th>
              
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from ACCOUNT_SUMMARY" ); 
            while(rs.next())
            {
                
            %>
            
            
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
           
            </tr>
           
            <%
            }
            %>
    </body>
</html>
