<%-- 
    Document   : AdmHome
    Created on : 1 Sep, 2016, 8:01:55 AM
    Author     : hp pc
--%>

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
                RequestDispatcher rd=request.getRequestDispatcher("admn");//create rd for sending a request to a resource
                out.println("Please Log in.");
                rd.include(request, response);//send control with data
            }
            else 
            {
                String st=(String)sess.getAttribute("Admin");
                out.print("<h1>WELCOME "+st+"!</h1>"); 
                out.print("<a href='eleschd.jsp'>Schedule Elections</a><br>");
                out.print("<a href='admvoters.jsp'>View Voters</a><br>");
                out.print("<a href='reset.jsp'>Reset Database</a><br>");
                out.print("<a href='admlogout.jsp'>Logout</a>");}
        %>
    </body>
</html>
