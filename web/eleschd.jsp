<%-- 
    Document   : eleschd
    Created on : 20 Sep, 2016, 9:33:06 PM
    Author     : hp pc
--%>

<%@page import="java.util.Date"%>
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
                RequestDispatcher rd=request.getRequestDispatcher("admn");//create rd for sending a request to a resource
                out.println("Please Log in");
                rd.include(request, response);//send control with data
            }
            else
            {
                out.print("<a href='AdmHome.jsp'>Home</a><br>");
                out.print("<a href='eleschd.jsp'>Schedule Elections</a><br>");
                out.print("<a href='admvoters.jsp'>View Voters</a><br>");
                out.print("<a href='reset.jsp'>Reset Database</a><br>");
                out.print("<a href='admlogout.jsp'>Logout</a><br>");
                out.print("<h1>Select State-</h1>");
                String s="";
                int i=0;
                try
                {
                    Connection c=null;
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                        PreparedStatement ps=c.prepareStatement("select distinct(state) from constituency");
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
                        {    
                            s=rs.getString("state");
                            i++;
                            out.print("<form action='admEdit' method='post'>");
                            out.print(i+". "+s+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp");
                            //out.print("<form action='admEdit' method='post'>");
                            out.print("<input type='hidden' name='sample' value='"+s+"'>");
                            out.print("<input type='submit' value='Set'><br>");
                            out.print("</form>");
                        }
                   //out.print("<input type='submit' value='Done' align='center'><br>");
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
