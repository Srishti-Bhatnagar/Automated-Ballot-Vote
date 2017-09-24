<%-- 
    Document   : Home
    Created on : 14 Aug, 2016, 12:49:59 PM
    Author     : hp pc
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <% 
          session=request.getSession();
          String id=(String)session.getAttribute("voter");
          try
          {
            Connection c=null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                PreparedStatement ps=c.prepareStatement("select fname from voters where vid=?;");
                ps.setString(1,id);
                ResultSet rs=ps.executeQuery();
                if(!rs.next())
                {
                    RequestDispatcher rd=request.getRequestDispatcher("Index.jsp");
                    rd.include(request, response);
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
        out.print("<h1>Home</h1><br>");
        out.print("<a href='vote.jsp'>Cast your Vote</a><br>");
        out.print("<a href='voters.jsp'>Voters List</a><br>");
        out.print("<a href='schedule.jsp'>Schedule Enquiry</a><br>");
        out.print("<a href='result.jsp'>Check Results</a><br>");
        out.print("<a href='logout.jsp'>Logout</a><br><br>");
    %>
    </body>
</html>
