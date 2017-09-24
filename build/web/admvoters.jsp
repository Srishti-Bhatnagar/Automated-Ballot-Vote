<%-- 
    Document   : admvoters
    Created on : 20 Sep, 2016, 7:24:20 AM
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
                RequestDispatcher rd=request.getRequestDispatcher("admn");//create rd for sending a request to a resource
                out.println("Please Log in.");
                rd.include(request, response);//send control with data
            }
            else 
            {
                out.print(" <a href='AdmHome.jsp'>Home</a><br>"); 
                out.print("<a href='eleschd.jsp'>Schedule Elections</a><br>");
                out.print("<a href='admvoters.jsp'>View Voters</a><br>");
                out.print("<a href='reset.jsp'>Reset Database</a><br>");
                out.print("<a href='admlogout.jsp'>Logout</a><br>");
                try
                {
                    Connection c=null;
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                        PreparedStatement ps=c.prepareStatement("select fname,mname,lname,fathername,dob,gender,address,nationality,state,constituency,e_mail from voters");
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
                        {
                            out.print(rs.getString(1)+"&emsp;"+rs.getString(2)+"&emsp;"+rs.getString(3)+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString(4)+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString(5)+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString(6)+"&emsp;&emsp;"+rs.getString(7)+"&emsp;&emsp;&emsp;&emsp;"+rs.getString(8)+"&emsp;&emsp;&emsp;"+rs.getString(9)+"&emsp;&emsp;&emsp;&emsp;"+rs.getString(10)+"&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString(11)+"<br>");
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
</html
