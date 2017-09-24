<%-- 
    Document   : signup
    Created on : 15 Aug, 2016, 9:47:42 AM
    Author     : hp pc
--%>
<%@page import="pack.Help"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>




<!DOCTYPE html>
<html>
        <%
            out.print("<form action='Signup' method='Post'>");
            out.print("<input type='text' name='FName' placeholder='First Name' pattern='[A-Za-z,.]+' title='Please use alphabets only!' required='required' >&emsp;&emsp;&emsp;&emsp;");
            out.print("<input type='text' name='MName' placeholder='Middle Name' pattern='[A-Za-z]+' title='Please use alphabets only!' >&emsp;&emsp;&emsp;&emsp;");
            out.print("<input type='text' name='LName' placeholder='Last Name' pattern='[A-Za-z]+' title='Please use alphabets only!' required='required' > <br> <br> <br> &emsp; &emsp; &emsp; &emsp; &emsp; &ensp; &emsp; &emsp; &emsp; &emsp; &ensp; &nbsp; &nbsp; &emsp; &emsp; &emsp; &emsp;");
            out.print("<input type='text' name='FthName' placeholder='Father's Name' pattern='[A-Za-z ,.]+' title='Please use alphabets only!' required='required' > <br> <br> <br>&emsp; &emsp; &emsp; &emsp; &emsp; &ensp; &emsp; &emsp; &emsp; &emsp; &ensp; &nbsp; &nbsp; &emsp; &emsp; &emsp; &emsp;");
            out.print("<input type='text' name='MthName' placeholder='Mother's Name' pattern='[A-Za-z ,.]+' title='Please use alphabets only!' required='required' > <br> <br> <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
            out.print("Date Of Birth:&emsp;&emsp;");
            out.print("<input type='date' name='dob' required='required' ><br> <br> <br> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;");
            out.print("Gender:&emsp;&emsp;");
            out.print("<input type='radio' name= 'gen' value='M' required='required'> Male <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;");
            out.print("<input type='radio' name= 'gen' value = 'F' > Female <br> <br> <br> &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &ensp; &nbsp; &emsp; &emsp; &emsp; &emsp;");
            out.print("<input type='text' name='Add' placeholder='Address' pattern='[A-Za-z0-9\0 ,-./]+' title='Please use alphabets,digits,',','/','.','-' only!' required > <br> <br> <br>");
            out.print("<select name='Nationality' required='required'>");
            out.print("<option value=''>Nationality</option>");
            out.print("<option value='Indian'>Indian</option>");
            out.print("<option value='NRI'>NRI</option>");
            out.print("</select>&emsp;&emsp;&emsp;&emsp;");
            out.print("<select name='State' required='required'>");
            out.print("<option value=''>State</option>");
            try
            {
                Connection c=null;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                PreparedStatement ps=c.prepareStatement("select DISTINCT(state) from constituency;");
                ResultSet rs=ps.executeQuery();
                    
                    while(rs.next())
                    {
                           
                        out.print("<option value='"+rs.getString("state")+"'>"+rs.getString("state")+"</option>");
                       
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
            out.print("></select>&emsp;&emsp;&emsp;&emsp;");
            out.print("<select name='Cname' required='required'>");
            out.print("<option value=''>Constituency_Name</option>");
           try
            {
                Connection c=null;
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                PreparedStatement ps=c.prepareStatement("select constituency from constituency;");
                ResultSet rs=ps.executeQuery();
                    
                    while(rs.next())
                    {
                           
                        out.print("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>");
                       
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
            out.print("</select><br><br><br>");
            out.print("<input type='email' name='mail' placeholder='E-Mail'><br><br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;");
            out.print("Enter Password:&ensp;<input type='password' name='pass' required='required'>*8-15 characters<br><br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;");
            out.print("Re-Enter Password:&ensp;<input type='password' name='repass' required ><br><br><br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
            out.print("<input type='submit' name='submit' value='Submit'>");
            out.print("</form>");
            
             
        %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>
