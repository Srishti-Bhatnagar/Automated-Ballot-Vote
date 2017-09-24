<%-- 
    Document   : result
    Created on : 14 Aug, 2016, 1:26:37 PM
    Author     : hp pc
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            out.println("Please Login First.");
            rd.include(request, response);
        }
        else{
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        Date d1=new Date();
        Date d2=sdf.parse("2016-11-30");
        if(d1.compareTo(d2)<0)
        {
            out.print("<br>Sorry You Cannot Access Results right now.Please Check On 31st Nov.");
            RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
            rd.include(request, response);
        }
        else
        {
            out.print("<h1>RESULTS:-</h1><br>");
            out.print("<a href='Home.jsp'>Home</a><br>");
            out.print("<a href='vote.jsp'>Cast your Vote</a><br>");
            out.print("<a href='edit.jsp'>Edit your Profile</a><br>");
            out.print("<a href='voters.jsp'>Voters List</a><br>");
            out.print("<a href='schedule.jsp'>Schedule Enquiry</a><br>");
            out.print("<a href='result.jsp'>Check Results</a><br>");
            out.print("<a href='logout.jsp'>Logout</a>");
            out.print("<form action='result' method='post'>");
            out.print("<input type='submit' value='Click To Search Results'>");
            out.print("</form>");
        
        }
        
        
        }
        %>
    </body>
</html>
