<%-- 
    Document   : login action for admin
    Created on : 27 Jun, 2017, 9:47:31 AM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="connect.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        String id=request.getParameter("email id");
        session.setAttribute("id1",id);
         String pw=request.getParameter("password");
        Statement st=con.createStatement();
       Statement st1=con.createStatement();
        ResultSet  rs=st.executeQuery("select CONFIRM_PASSWORD from ADMIN_SIGNUP where EMAIL_ID='"+id+"'");
         //ResultSet  rs1=st1.executeQuery("select PASSWORD from USER_LOGIN where USER_ID='"+id+"'");
        if(id.equals("admin"))
        {
            if(pw.equals("EMAIL_ID"))
            {%>
            <jsp:forward page="afer admin login.jsp"></jsp:forward>
            <%}
        }
        else if(rs.next())
        {
            String pwd=rs.getString(1);
            //String stad=rs.getString(2);
            if(pwd.equals(pw))
            {
                
                {%>
                <jsp:forward page="after admin login.jsp"></jsp:forward>
            <%
                    
                }
            
            }
                     else
            {
                out.println("incorrect password");
                     }
                     }
         
             
             else
                     {
                     out.println("incorrect userid");
                     }
        
                                         
      
        
        
       
        %>
    </body>
</html>
