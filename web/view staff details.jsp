<%-- 
    Document   : viewstuidaction1
    Created on : 22 Mar, 2014, 1:42:31 PM
    Author     : sharans
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
               
                <th>name of employee</th>
                <th>booth number</th>
                <th>date of working</th>
                
                
            </tr>
            <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from STAFF_DETAILS" ); 
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
    </center>
    </body>
</html>
