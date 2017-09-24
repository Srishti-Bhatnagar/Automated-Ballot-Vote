package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pack.Help;
import java.util.Random;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class sign_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("        ");
out.print("<form action='Signup' method='Post'>");
            out.print("<input type='text' name='FName' placeholder='First Name' pattern='[A-Za-z]+' title='Please use alphabets only!' required >&emsp;&emsp;&emsp;&emsp;");
            out.print("<input  type='text' name='MName' placeholder='Middle Name' pattern='[A-Za-z]+' title='Please use alphabets only!' >&emsp;&emsp;&emsp;&emsp;");
            out.print("<input  type='text' name='LName' placeholder='Last Name' pattern='[A-Za-z]+' title='Please use alphabets only!' required > <br> <br> <br> &emsp; &emsp; &emsp; &emsp; &emsp; &ensp; &emsp; &emsp; &emsp; &emsp; &ensp; &nbsp; &nbsp; &emsp; &emsp; &emsp; &emsp;");
           out.print("<input  type='text' name='FthName' placeholder='Father's Name' pattern='[A-Za-z ]+' title='Please use alphabets only!' required > <br> <br> <br>");
              out.print("&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
            out.print("Date Of Birth:");
            out.print("&emsp;&emsp;");
            out.print("<input  type='date' name='dob' required > <br> <br> <br>");
                   out.print("&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;");
            out.print("Gender:");
            out.print("&emsp;&emsp;");
            out.print("<input  type='radio' name= 'gen' value='M' required> Male <br>");
                out.print("&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;");
            out.print("<input  type='radio' name= 'gen' value = 'F' > Female <br> <br> <br> &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &ensp; &nbsp; &emsp; &emsp; &emsp; &emsp;");
            out.print("<input  type='text' name='Add' placeholder='Address' pattern='[A-Za-z0-9\0 ,-./]+' title='Please use alphabets,digits,',','/','.','-' only!' required > <br> <br> <br>");
                    out.print("<select name='Nationality' required");
                    out.print("><option");
          out.print("value='' enabled='false'>Nationality</option");
          out.print("><option ");
            out.print("value='Indian'>Indian</option");
                    out.print("><option");
            out.print("value='NRI'>NRI</option");
                    out.print("></select>&emsp;&emsp;&emsp;&emsp;");
                  out.print("<select name='State' required");
          out.print("><option");
          out.print("value='' enabled='false'>'State'</option>");
           try
            {
                Connection c=null;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                PreparedStatement ps=c.prepareStatement("select DISTINCT(state) from constituency;");
                ResultSet rs=ps.executeQuery();
                    
                    while(rs.next())
                    {
                           
                        out.print("<option value="+rs.getString(1)+">"+rs.getString(1)+"</option>");
                       
                    }
     
                    
                }
                finally
                {
                    c.close();
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
             out.print("></select>&emsp;&emsp;&emsp;&emsp;");
          //out.print("  <input  type = 'text' name = 'State' placeholder = 'State/UT' required >");
         out.print("<select name='Cname' required");
          out.print("<option value='' enabled='false'>Constituency_Name</option>");
           try
            {
                Connection c=null;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                PreparedStatement ps=c.prepareStatement("select constituency from constituency;");
                ResultSet rs=ps.executeQuery();
                    
                    while(rs.next())
                    {
                           
                        out.print("<option value="+rs.getString(1)+">"+rs.getString(1)+"</option>");
                       
                    }
     
                    
                }
                finally
                {
                    c.close();
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
             out.print("></select><br><br><br>");
            out.print("<input  type='email' name='mail' placeholder='E-Mail'><br><br><br>");
            out.print("&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;");
            out.print("Enter Password:&ensp;");
            out.print("<input  type='password' name='pass' required>  * minimum 8 characters<br><br><br>");
            out.print("&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;Re-Enter Password:");
            out.print("&ensp;");
            out.print("<input  type='password' name='repass' required ><br><br><br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
            out.print("<input  type='submit' name='submit' value='Submit'>");
            out.print("</form>");
            
             
        
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
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
