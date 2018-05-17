<%-- 
    Document   : loginaction
    Created on : Jan 8, 2015, 1:18:25 AM
    Author     : MyLap
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
        ResultSet  rs=st.executeQuery("select CONFIRM_PASSWORD from USERSIGNUP where USER_ID='"+id+"'");
         //ResultSet  rs1=st1.executeQuery("select PASSWORD from USER_LOGIN where USER_ID='"+id+"'");
        if(id.equals("USER_ID"))
        {
            if(pw.equals("USER_ID"))
            {%>
            <jsp:forward page="afer user login.jsp"></jsp:forward>
            <%}
        }
        else if(rs.next())
        {
            String pwd=rs.getString(1);
            //String stad=rs.getString(2);
            if(pwd.equals(pw))
            {
                
                {%>
                <jsp:forward page="after user login.jsp"></jsp:forward>
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
