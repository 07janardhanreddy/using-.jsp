<%-- 
    Document   : action of product details
    Created on : 26 Jun, 2017, 7:37:02 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
                  
        String productname=request.getParameter("product name");
         String productid=request.getParameter("product id");
          String modelname=request.getParameter("model name");
           String modelnumber=request.getParameter("model number");
           String productguide=request.getParameter("product guide");
           String sid=(String) session.getAttribute("place of expo");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select NUMBER_OF_BOOTHS from ENTRY_OF_SLOT where PLACE_OF_EXPO='"+sid+"'");
           rs.next();
           String i=rs.getString(1);
           int j=Integer.parseInt(i);
        PreparedStatement ps=con.prepareStatement("insert into ENTRY_OF_PRODUCT_DETAILS values(?,?,?,?,?,?)");
       ps.setString(1,productname);
        ps.setString(2,productid);
         ps.setString(3,modelname);
          ps.setString(4,modelnumber);
              ps.setString(5,productguide);
             ps.setString(6,sid);
       int k=ps.executeUpdate();
        if(k!=0)
        {
            int q=j-1;
            PreparedStatement ps1=con.prepareStatement("update ENTRY_OF_SLOT set NUMBER_OF_BOOTHS=? where PLACE_OF_EXPO='"+sid+"'");
       ps.setString(1,productname);
        ps1.setInt(1,q);
        ps1.executeUpdate();
            out.println("inserted succesfully");
          
        }
        
        %>
        <table>
    <tr>
        <td><a href="slot booking.jsp">would you like to  book one more slot</a></td>
    </tr>
    <tr>
        <td><a href="fee payment.jsp">proceed to fee</a></td>
    </tr>
    </table>
   
    </body>
</html>