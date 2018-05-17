package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class admin_0020signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection con;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connect.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("     ");

     Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Expo","johnny1997");
if(con!=null)   
out.println("");
     
      out.write("  \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <title>ADMINISTRATOR REGISTRATION</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"regaction.jsp\" method=\"post\">\n");
      out.write("            <ceter>\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>First name</td><td><input type=\"text\" name=\"first name\" value=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr><td>Last Name</td><td><input type=\"text\" name=\"last name\" value=\"\" /></td></tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Mobile number</td><td><input type=\"text\" name=\"mobile number\" value=\"\" /></td>\n");
      out.write("            </tr>        \n");
      out.write("            <tr>\n");
      out.write("                <td>Email id</td><td><input type=\"text\" name=\"email id\" value=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>create password</td><td><input type=\"password\" name=\"create password\" value=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    confirm password\n");
      out.write("                </td><td><input type=\"password\" name=\"confirm password\" value=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr><td><input type=\"submit\" value=\"Submit\" /></td></tr>\n");
      out.write("        </table>\n");
      out.write("            </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
