<%-- 
    Document   : logout
    Created on : 14 Aug, 2016, 1:40:52 PM
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
        
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession sess=request.getSession(false);
        if(sess!=null)
        {
            sess.invalidate();
            out.println("<br>successfully logged out!!");
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.include(request, response);
        }
        else
        {
            
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.include(request, response);
        }%>
    </body>
</html>
