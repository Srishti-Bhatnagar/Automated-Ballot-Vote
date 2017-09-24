<%-- 
    Document   : voters
    Created on : 14 Aug, 2016, 1:24:42 PM
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
            HttpSession sess=request.getSession(false);
        if(sess==null)
        {
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");//create rd for sending a request to a resource
            out.println("paji login v kar leya karo");
            rd.include(request, response);//send control with data
        }
        else{
            String st=(String)sess.getAttribute("voter");
            out.print("<h1>VOTER'S LIST</h1><br>");
        out.print("<a href='Home.jsp'>Home</a><br>"); 
        out.print("<a href='vote.jsp'>Cast your Vote</a><br>");
         out.print("<a href='edit.jsp'>Edit your Profile</a><br>");
         out.print("<a href='voters.jsp'>Voters List</a><br>");
         out.print("<a href='schedule.jsp'>Schedule Enquiry</a><br>");
         out.print("<a href='result.jsp'>Check Results</a><br>");
         out.print("<a href='logout.jsp'>Logout</a><br>");
         String state="";
         String cons="";
         try
         {
             Connection c=null;
             try
             {
                Class.forName("com.mysql.jdbc.Driver");
                    c=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                    PreparedStatement ps=c.prepareStatement("select state,constituency from voters where vid=?");
                    ps.setString(1,st);
                    ResultSet rs=ps.executeQuery();
                    if(rs.next())
                    {
                        state=rs.getString("state");
                        cons=rs.getString("constituency");
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
        out.print("<form action='voters' method='post'>");
        out.print("<input type='radio' name='option' required='required' value='"+state+"'>Statewise List &emsp;");
        out.print("<input type='radio' name='option' value='cons'>ConstituencyWise List&emsp;");
        out.print("<input type='radio' name='option' value='full"+st+"'>Entire List<br>");
        out.print("<input type='submit' name='search' value='Search'>");
        out.print("<input type='hidden' name='const' value='"+cons+"'>");
        out.print("</form>");
        
        }
        %>
    </body>
</html>

