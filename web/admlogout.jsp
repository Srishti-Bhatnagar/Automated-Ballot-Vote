<%-- 
    Document   : admlogout
    Created on : 20 Sep, 2016, 7:48:36 PM
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
        <%HttpSession sess=request.getSession(false);
        if(sess!=null)
        {
            sess.invalidate();
            out.println("<br>Successfully Logged Out.");
            RequestDispatcher rd=request.getRequestDispatcher("admn");
            rd.include(request, response);
        }
        else
        {
            
            RequestDispatcher rd=request.getRequestDispatcher("admn");
            rd.include(request, response);
        }
        %>
    </body>
</html>
