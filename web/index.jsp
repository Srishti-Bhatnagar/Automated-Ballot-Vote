<%-- 
    Document   : index
    Created on : 6 Aug, 2016, 1:30:19 PM
    Author     : hp pc
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        
            
            <%
                PrintWriter pw=response.getWriter();
                pw.print("<h1><p align='center'><br><br>Login</h1>");
                if(request.getParameter("id")==(null))
                {
                pw.print("<form action='Index' method='Post'>");
                pw.print("<p align='center'><input type='text'name='id' placeholder='Voter-Id'><br><br>");
                pw.print("<p align='center'><input type='password' name='pass' placeholder='Password'>");
                pw.print("<p align='center'><a href='sign.jsp'> No Voter's Id yet?<br>Click here to Register Yourself!.</a><br><br>");
                pw.print("<p align='center'><font size='6px'> <input type='submit' name='login' value='Log In'></form>");
                }
                else
                {
                pw.print("<form action='Index' method='Post'>");
                pw.print("<p align='center'><input type='text'name='id' value='"+request.getParameter("id")+"'><br><br>");
                pw.print("<p align='center'><input type='password' name='pass' placeholder='Password'>");
                pw.print("<p align='center'><a href='sign.jsp'> No Voter's Id yet?<br>Click here to Register Yourself!.</a><br><br>");
                pw.print("<p align='center'><font size='6px'> <input type='submit' name='login' value='Log In'></form>");
                }       

            
            %>
           
            
           
            
              
    </body>
</html>
