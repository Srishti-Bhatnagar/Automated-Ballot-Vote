<%-- 
    Document   : schedule
    Created on : 14 Aug, 2016, 1:25:11 PM
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
       <%  HttpSession sess=request.getSession(false);
            if(sess==null)
            {
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");//create rd for sending a request to a resource
                out.println("paji login v kar leya karo");
                rd.include(request, response);//send control with data
            }
            else{
           out.print("<a href='Home.jsp'>Home</a><br>");
            out.print("<a href='vote.jsp'>Cast your Vote</a><br>");
            out.print("<a href='edit.jsp'>Edit your Profile</a><br>");
            out.print("<a href='voters.jsp'>Voters List</a><br>");
            out.print("<a href='schedule.jsp'>Schedule Enquiry</a><br>");
            out.print("<a href='result.jsp'>Check Results</a><br>");
            //out.print("<a href='Home.jsp'>Home</a><br>");
            out.print("<a href='logout.jsp'>Logout</a><br>");
            out.print("<h1>Schedule:</h1><br>");
            
            String st=(String)sess.getAttribute("voter");
            try
            {
                Connection c=null;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                    PreparedStatement ps=c.prepareStatement("select state,constituency,date_of_Election from constituency;");
                    ResultSet rs=ps.executeQuery();
                     out.print("<h3>State &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Constituency &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Date Of Election </h3><br>");
                    while(rs.next())
                    {
                        out.print(rs.getString(1)+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp "+rs.getString(2)+" &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+rs.getString(3)+"<br>");
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
            

            }
      %>
    </body>
</html>
