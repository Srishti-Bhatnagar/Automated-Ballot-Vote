<%-- 
    Document   : reset
    Created on : 20 Sep, 2016, 6:45:46 AM
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
            if(sess==null)
            {
                RequestDispatcher rd=request.getRequestDispatcher("admn");//create rd for sending a request to a resource
                out.println("Please Log in.");
                rd.include(request, response);//send control with data
            }
        %>
        <br><a href='AdmHome.jsp'>Home</a><br>
         <a href='eleschd.jsp'>Schedule Elections</a><br>
         <a href='admvoters.jsp'>View Voters</a><br>
         <a href='reset.jsp'>Reset Database</a><br>
         <a href='admlogout.jsp'>Logout</a>
         <form action="reset" method="post">
         <input type="submit" name="reset" value="Reset">
         </form>
    </body>
</html>
